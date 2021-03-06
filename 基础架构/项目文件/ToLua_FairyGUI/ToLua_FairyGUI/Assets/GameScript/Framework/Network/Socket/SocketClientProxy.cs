using System;
using LuaInterface;
using System.Collections.Generic;

namespace GameFramework
{
    /// <summary>
    /// 网络会话回调
    /// </summary>
    public delegate void SessionCallBack(SessionData sd);

    /// <summary>
    /// 网络相关代理
    /// </summary>
    public class SocketClientProxy : SocketClient
    {
        public Action onNetMsgBack;                 //当收到消息时
        public Action<SessionData> onNetDataError;

        /// <summary>
        /// 已回包的会话列表
        /// </summary>
        protected IList<SessionData> responeList = new List<SessionData>();
        /// <summary>
        /// 请求会话列表
        /// </summary>
        protected IDictionary<uint, SessionData> requestList = new Dictionary<uint, SessionData>();

        Queue<SessionData> sessionDataList = new Queue<SessionData>();
        IDictionary<uint, List<LuaFunction>> listeners = new Dictionary<uint, List<LuaFunction>>();

        public SocketClientProxy(int _serverType = 1) : base(_serverType) { }

        /// <summary>
        /// 添加网络服务监听
        /// </summary>
        /// <param name="service">服务接口类型</param>
        /// <param name="_callBack">回调函数</param>
        public void AddListener(uint _serviceId, LuaFunction _callBack)
        {
            List<LuaFunction> ls;
            if (listeners.ContainsKey(_serviceId))
            {
                ls = listeners[_serviceId];
            }
            else
            {
                ls = new List<LuaFunction>();
                listeners.Add(_serviceId, ls);
            }

            if (!ls.Contains(_callBack))
            {
                ls.Add(_callBack);
            }
        }

        /// <summary>
        /// 删除网络服务监听
        /// </summary>
        /// <param name="service">服务接口类型</param>
        /// <param name="_callBack">回调函数</param>
        public void RemoveListener(uint _serviceId, LuaFunction _callBack)
        {
            if (listeners.ContainsKey(_serviceId))
            {
                List<LuaFunction> ls = listeners[_serviceId];
                if (ls.Contains(_callBack))
                {
                    ls.Remove(_callBack);
                    if (ls.Count < 1)
                    {
                        listeners.Remove(_serviceId);
                    }
                }
            }
        }

        /// <summary>
        /// 发送数据到后台
        /// </summary>
        /// <param name="_data">数据</param>
        /// <param name="service">协议类型</param>
        /// <param name="modulName">模块名</param>
        /// <param name="_callBack">消息回调</param>
        /// <param name="_cbParam">消息回调参数</param>
        /// <param name="_requestData">上传的数据，会原样返回</param>
        public void SendData(byte[] _data, uint _serviceid, object _requestData)
        {
            uint callbackId = (uint)base.Send(_data, (int)_serviceid);
            SessionData sd = CreateSession(callbackId, _serviceid, _requestData);
            sd.SendingData = _data;
            if (!requestList.ContainsKey(sd.ServiceID))
            {
                requestList.Add(sd.ServiceID, sd);
            }
        }

        /// <summary>
        /// 处理回包,主线程调用
        /// </summary>
        public override void Loop()
        {
            base.Loop();
            if (socket != null && socket.Connected)
            {
                HandlerRespones();
            }
        }

        public override void Clear()
        {
            requestList.Clear();
            responeList.Clear();

            foreach (List<LuaFunction> ls in listeners.Values)
            {
                ls.Clear();
            }

            listeners.Clear();

            onNetDataError = null;
            onNetMsgBack = null;

            base.Clear();
        }

        protected override void DecodePackage(byte[] _byteData)
        {
            SessionData sd;
            if (!requestList.ContainsKey(package_service))
            {
                //后台主动推包
                sd = CreateSession(package_callbackId, package_service, null);
            }
            else
            {
                // 前台主动收包
                sd = requestList[package_service];
                requestList.Remove(package_service);
            }
#if UNITY_EDITOR
            Debugger.Log("reciveService: "+ package_service);
#endif
            sd.errCode = package_errCode;
            sd.InitMsg(_byteData, package_size);
            responeList.Add(sd);
        }

        protected SessionData CreateSession(uint _callbackId, uint _serviceid, object _requestData)
        {
            SessionData sd = sessionDataList.Count > 0 ? sessionDataList.Dequeue() : new SessionData();
            sd.Init(_callbackId, _serviceid, _requestData);
            return sd;
        }

        /// <summary>
        /// 处理程序响应
        /// </summary>
        void HandlerRespones()
        {
            CheckReceive();
            if (responeList == null || responeList.Count < 1)
            {
                return;
            }

            IList<SessionData> rps = new List<SessionData>(responeList);

            responeList.Clear();
            for (int i = 0; i < rps.Count; i++)
            {
                SessionData sd = rps[i];
                HandlerRespone(sd);
                sessionDataList.Enqueue(sd);
            }
        }

        /// <summary>
        /// 处理程序响应
        /// </summary>
        /// <param name="_sd">会话数据</param>
        void HandlerRespone(SessionData _sd)
        {
            if (_sd != null)
            {
                if (listeners.ContainsKey(_sd.ServiceID))
                {
                    for (int i = 0; i < listeners[_sd.ServiceID].Count; i++)
                    {
                        listeners[_sd.ServiceID][i].Call(ServerType, _sd);
                    }
                }
            }

            if (onNetMsgBack != null)
            {
                onNetMsgBack();
            }
        }
    }
}