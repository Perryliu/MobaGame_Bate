﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class MyGLoaderWrap
{
	public static void Register(LuaState L)
	{
		L.BeginClass(typeof(MyGLoader), typeof(FairyGUI.GLoader));
		L.RegFunction("New", _CreateMyGLoader);
		L.RegFunction("__tostring", ToLua.op_ToString);
		L.EndClass();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int _CreateMyGLoader(IntPtr L)
	{
		try
		{
			int count = LuaDLL.lua_gettop(L);

			if (count == 0)
			{
				MyGLoader obj = new MyGLoader();
				ToLua.PushObject(L, obj);
				return 1;
			}
			else
			{
				return LuaDLL.luaL_throw(L, "invalid arguments to ctor method: MyGLoader.New");
			}
		}
		catch (Exception e)
		{
			return LuaDLL.toluaL_exception(L, e);
		}
	}
}

