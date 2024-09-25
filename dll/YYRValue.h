#include "Ref.h" 
#ifndef __YYRVALUE_H__
#define  __YYRVALUE_H__

typedef signed int  int32;
typedef long long int64;

class YYObjectBase;


#if !defined(__defined_RValue_consts__)
#define __defined_RValue_consts__
const int VALUE_REAL = 0;		// Real value
const int VALUE_STRING = 1;		// String value
const int VALUE_ARRAY = 2;		// Array value
const int VALUE_OBJECT = 6;		// YYObjectBase* value 
const int VALUE_INT32 = 7;		// Int32 value
const int VALUE_UNDEFINED = 5;	// Undefined value
const int VALUE_PTR = 3;		// Ptr value
const int VALUE_VEC3 = 4;		// Deprecated : unused : Vec3 (x,y,z) value (within the RValue)
const int VALUE_VEC4 = 8;		// Deprecated : unused :Vec4 (x,y,z,w) value (allocated from pool)
const int VALUE_VEC44 = 9;		// Deprecated : unused :Vec44 (matrix) value (allocated from pool)
const int VALUE_INT64 = 10;		// Int64 value
const int VALUE_ACCESSOR = 11;	// Actually an accessor
const int VALUE_NULL = 12;		// JS Null
const int VALUE_BOOL = 13;		// Bool value
const int VALUE_ITERATOR = 14;	// JS For-in Iterator
const int VALUE_REF = 15;		// Reference value (uses the ptr to point at a RefBase structure)
#define MASK_KIND_RVALUE	0x0ffffff
const int VALUE_UNSET = MASK_KIND_RVALUE;

#define REFID_INSTANCE 0x7FF80000

struct RValue;
struct DynamicArrayOfRValue
{
	int length;
	RValue* arr;
};

class RefDynamicArrayOfRValue;

#define ARRAY_FLAG_IMMUTABLE		0x00000001				// true if the array is immutable and cannot be written to (NOTE: copies can be taken but the array cannot be written to, only read from)

struct vec3
{
	float	x, y, z;
};

struct vec4
{
	float	x, y, z, w;
};

struct matrix44
{
	vec4	m[4];
};

const int ERV_None = 0;
const int ERV_Enumerable = (1 << 0);
const int ERV_Configurable = (1 << 1);
const int ERV_Writable = (1 << 2);
const int ERV_Owned = (1 << 3);

#define JS_BUILTIN_PROPERTY_DEFAULT				(ERV_Writable | ERV_Configurable )
#define JS_BUILTIN_LENGTH_PROPERTY_DEFAULT		(ERV_None)


#pragma pack( push, 4)
struct RValue
{
	union {
		int32 v32;
		int64 v64;
		double	val;						// value when real
		union {
			union {
				RefString* pRefString;
				//char*	str;						// value when string
				RefDynamicArrayOfRValue* pRefArray;	// pointer to the array
				vec4* pVec4;
				matrix44* pMatrix44;
				void* ptr;
				YYObjectBase* pObj;
				//vec3 v3;
			};
			/*struct {
			float x, y, z;
			} v3;*/
			//float v3[3];
		};
	};
	unsigned int		flags;							// use for flags (Hijack for Enumerable and Configurable bits in JavaScript)  (Note: probably will need a visibility as well, to support private variables that are promoted to object scope, but should not be seen (is that just not enumerated????) )
	unsigned int		kind;							// kind of value

	void Serialise(IBuffer* _buffer);
	void DeSerialise(IBuffer* _buffer);

	const char* GetString() const { return (((kind & MASK_KIND_RVALUE) == VALUE_STRING) && (pRefString != NULL)) ? pRefString->get() : ""; }
	long long asInt64() const { return INT64_RValue(this); }
	double asReal() const { return REAL_RValue(this); }
	bool asBool() const { return BOOL_RValue(this); }
	CInstance* asObject() const { return (((kind & MASK_KIND_RVALUE) == VALUE_OBJECT)) ? (CInstance*)pObj : NULL; }
};


// new structure used to initialise constant numbers at global scope (to eliminate construction overhead).
struct DValue
{
	double	val;
	int		dummy;
	int		kind;
};

struct DLValue
{
	int64	val;
	int		dummy;
	int		kind;
};

#pragma pack(pop)
#endif


#endif#include "Ref.h" 
// Copyright © Opera Norway AS. All rights reserved.
// This file is an original work developed by Opera.
#ifndef __YYRVALUE_H__
#define  __YYRVALUE_H__

typedef signed int  int32;
typedef long long int64;

class YYObjectBase;


#if !defined(__defined_RValue_consts__)
#define __defined_RValue_consts__
const int VALUE_REAL = 0;		// Real value
const int VALUE_STRING = 1;		// String value
const int VALUE_ARRAY = 2;		// Array value
const int VALUE_OBJECT = 6;		// YYObjectBase* value 
const int VALUE_INT32 = 7;		// Int32 value
const int VALUE_UNDEFINED = 5;	// Undefined value
const int VALUE_PTR = 3;		// Ptr value
const int VALUE_VEC3 = 4;		// Deprecated : unused : Vec3 (x,y,z) value (within the RValue)
const int VALUE_VEC4 = 8;		// Deprecated : unused :Vec4 (x,y,z,w) value (allocated from pool)
const int VALUE_VEC44 = 9;		// Deprecated : unused :Vec44 (matrix) value (allocated from pool)
const int VALUE_INT64 = 10;		// Int64 value
const int VALUE_ACCESSOR = 11;	// Actually an accessor
const int VALUE_NULL = 12;		// JS Null
const int VALUE_BOOL = 13;		// Bool value
const int VALUE_ITERATOR = 14;	// JS For-in Iterator
const int VALUE_REF = 15;		// Reference value (uses the ptr to point at a RefBase structure)
#define MASK_KIND_RVALUE	0x0ffffff
const int VALUE_UNSET = MASK_KIND_RVALUE;

#define MAKE_REF( a, b )		(int64)(((int64)(a) << 32) | (((int64)(b))&0xffffffffUL))
#define GET_REF_TYPE(a)			(int64)(((int64)a)>>32)


#define REFCAT_RESOURCE			0x01000000
#define REFCAT_DATA_STRUCTURE	0x02000000
#define REFCAT_INSTANCE			0x04000000
#define REFCAT_GENERAL			0x08000000

// Runtime instances of resources
#define REFID_INSTANCE			(0x00000001 | REFCAT_INSTANCE)
#define REFID_DBG				(0x00000002 | REFCAT_INSTANCE)
#define REFID_PART_SYSTEM		(0x00000004 | REFCAT_INSTANCE)
#define REFID_PART_EMITTER		(0x00000008 | REFCAT_INSTANCE)
#define REFID_PART_TYPE			(0x00000010 | REFCAT_INSTANCE)

// 
#define REFID_OBJECT			(eAT_Object | REFCAT_RESOURCE)
#define REFID_SPRITE			(eAT_Sprite | REFCAT_RESOURCE)
#define REFID_SOUND				(eAT_Sound | REFCAT_RESOURCE)
#define REFID_ROOM				(eAT_Room | REFCAT_RESOURCE)
#define REFID_PATH				(eAT_Path | REFCAT_RESOURCE)
#define REFID_SCRIPT			(eAT_Script | REFCAT_RESOURCE)
#define REFID_FONT				(eAT_Font | REFCAT_RESOURCE)
#define REFID_TIMELINE			(eAT_Timeline | REFCAT_RESOURCE)
#define REFID_TILESET			(eAT_Tileset | REFCAT_RESOURCE)
#define REFID_SHADER			(eAT_Shader | REFCAT_RESOURCE)
#define REFID_SEQUENCE			(eAT_Sequence | REFCAT_RESOURCE)
#define REFID_ANIMCURVE			(eAT_AnimCurve | REFCAT_RESOURCE)
#define REFID_PARTICLESYSTEM	(eAT_ParticleSystem | REFCAT_RESOURCE)
#define REFID_TILEMAP			(eAT_Tilemap | REFCAT_RESOURCE)


#define REFID_DS_LIST			(0x00000001 | REFCAT_DATA_STRUCTURE)
#define REFID_DS_MAP			(0x00000002 | REFCAT_DATA_STRUCTURE)
#define REFID_DS_GRID			(0x00000004 | REFCAT_DATA_STRUCTURE)
#define REFID_DS_QUEUE			(0x00000008 | REFCAT_DATA_STRUCTURE)
#define REFID_DS_STACK			(0x00000010 | REFCAT_DATA_STRUCTURE)
#define REFID_DS_PRIORITY		(0x00000020 | REFCAT_DATA_STRUCTURE)

#define REFID_BUFFER			(0x00000001 | REFCAT_GENERAL)
#define REFID_VERTEX_BUFFER		(0x00000002 | REFCAT_GENERAL)
#define REFID_VERTEX_FORMAT		(0x00000003 | REFCAT_GENERAL)
#define REFID_SURFACE			(0x00000004 | REFCAT_GENERAL)
#define REFID_TIME_SOURCE		(0x00000005 | REFCAT_GENERAL)
#define REFID_LAYER				(0x00000006 | REFCAT_GENERAL)
#define REFID_FLEXPANEL			(0x00000007 | REFCAT_GENERAL)

struct RValue;
struct DynamicArrayOfRValue
{
	int length;
	RValue* arr;
};

class RefDynamicArrayOfRValue;

#define ARRAY_FLAG_IMMUTABLE		0x00000001				// true if the array is immutable and cannot be written to (NOTE: copies can be taken but the array cannot be written to, only read from)

struct vec3
{
	float	x, y, z;
};

struct vec4
{
	float	x, y, z, w;
};

struct matrix44
{
	vec4	m[4];
};

const int ERV_None = 0;
const int ERV_Enumerable = (1 << 0);
const int ERV_Configurable = (1 << 1);
const int ERV_Writable = (1 << 2);
const int ERV_Owned = (1 << 3);

#define JS_BUILTIN_PROPERTY_DEFAULT				(ERV_Writable | ERV_Configurable )
#define JS_BUILTIN_LENGTH_PROPERTY_DEFAULT		(ERV_None)


#pragma pack( push, 4)
struct RValue
{
	union {
		int32 v32;
		int64 v64;
		double	val;						// value when real
		union {
			union {
				RefString* pRefString;
				//char*	str;						// value when string
				RefDynamicArrayOfRValue* pRefArray;	// pointer to the array
				vec4* pVec4;
				matrix44* pMatrix44;
				void* ptr;
				YYObjectBase* pObj;
				//vec3 v3;
			};
			/*struct {
			float x, y, z;
			} v3;*/
			//float v3[3];
		};
	};
	unsigned int		flags;							// use for flags (Hijack for Enumerable and Configurable bits in JavaScript)  (Note: probably will need a visibility as well, to support private variables that are promoted to object scope, but should not be seen (is that just not enumerated????) )
	unsigned int		kind;							// kind of value

	void Serialise(IBuffer* _buffer);
	void DeSerialise(IBuffer* _buffer);

	const char* GetString() const { return (((kind & MASK_KIND_RVALUE) == VALUE_STRING) && (pRefString != NULL)) ? pRefString->get() : ""; }
	long long asInt64() const { return INT64_RValue(this); }
	double asReal() const { return REAL_RValue(this); }
	bool asBool() const { return BOOL_RValue(this); }
	CInstance* asObject() const { return (((kind & MASK_KIND_RVALUE) == VALUE_OBJECT)) ? (CInstance*)pObj : NULL; }
};


// new structure used to initialise constant numbers at global scope (to eliminate construction overhead).
struct DValue
{
	double	val;
	int		dummy;
	int		kind;
};

struct DLValue
{
	int64	val;
	int		dummy;
	int		kind;
};

#pragma pack(pop)
#endif


#endif
