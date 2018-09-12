module dlua.lualib; 
import dlua;
/*
** $Id: lualib.h,v 1.45.1.1 2017/04/19 17:20:42 roberto Exp $
** Lua standard libraries
** See Copyright Notice in lua.h
*/

extern (C):

/* version suffix for environment variable names */

int luaopen_base (lua_State* L);

enum LUA_COLIBNAME = "coroutine";
int luaopen_coroutine (lua_State* L);

enum LUA_TABLIBNAME = "table";
int luaopen_table (lua_State* L);

enum LUA_IOLIBNAME = "io";
int luaopen_io (lua_State* L);

enum LUA_OSLIBNAME = "os";
int luaopen_os (lua_State* L);

enum LUA_STRLIBNAME = "string";
int luaopen_string (lua_State* L);

enum LUA_UTF8LIBNAME = "utf8";
int luaopen_utf8 (lua_State* L);

enum LUA_BITLIBNAME = "bit32";
int luaopen_bit32 (lua_State* L);

enum LUA_MATHLIBNAME = "math";
int luaopen_math (lua_State* L);

enum LUA_DBLIBNAME = "debug";
int luaopen_debug (lua_State* L);

enum LUA_LOADLIBNAME = "package";
int luaopen_package (lua_State* L);

/* open all previous libraries */
void luaL_openlibs (lua_State* L);

extern (D) auto lua_assert(T)(auto ref T x)
{
    return cast(void) 0;
}
