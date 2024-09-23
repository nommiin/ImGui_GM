// Copyright © Opera Norway AS. All rights reserved.
// This file is an original work developed by Opera.
#ifndef __YY__RUNNER_INTERFACE_H_
#define __YY__RUNNER_INTERFACE_H_

#include <stdint.h>

struct RValue;
class YYObjectBase;
class CInstance;
struct YYRunnerInterface;
struct HTTP_REQ_CONTEXT;
typedef int (*PFUNC_async)(HTTP_REQ_CONTEXT* _pContext, void* _pPayload, int* _pMap);
typedef void (*PFUNC_cleanup)(HTTP_REQ_CONTEXT* _pContext);
typedef void (*PFUNC_process)(HTTP_REQ_CONTEXT* _pContext);

typedef void (*TSetRunnerInterface)(const YYRunnerInterface* pRunnerInterface, size_t _functions_size);
typedef void (*TYYBuiltin)(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg);
typedef long long int64;
typedef unsigned long long uint64;
typedef int32_t int32;
typedef uint32_t uint32;
typedef int16_t int16;
typedef uint16_t uint16;
typedef int8_t int8;
typedef uint8_t uint8;

#ifdef GDKEXTENSION_EXPORTS

enum eBuffer_Format {
	eBuffer_Format_Fixed = 0,
	eBuffer_Format_Grow = 1,
	eBuffer_Format_Wrap = 2,
	eBuffer_Format_Fast = 3,
	eBuffer_Format_VBuffer = 4,
	eBuffer_Format_Network = 5,
};

class IBuffer;
#else
/* For eBuffer_Format */
#include <Files/Buffer/IBuffer.h>
#endif

typedef void* HYYMUTEX;
typedef void* HSPRITEASYNC;

struct YYRunnerInterface
{
	// ########################################################################
	// BASIC INTERACTION WITH THE USER
	// ######################################################################## 
	
	/**
	 * @brief Writes a formatted string to the debug console output, analogous to printf.
	 *
	 * @param fmt A string that contains the text to be written to the output. It can include embedded format tags.
	 * @param ... (Variadic arguments) A variable number of arguments to be embedded in the format string.
	 *
	 * Usage example:
	 *
	 *		// Writes to the debug console
	 *		DebugConsoleOutput("This is a number: %d", a_number);
	 */
	void (*DebugConsoleOutput)(const char* fmt, ...);

	/**
	 * @brief Writes a formatted string to the release console output, analogous to printf.
	 *
	 * @param fmt A string that contains the text to be written to the output. It can include embedded format tags.
	 * @param ... (Variadic arguments) A variable number of arguments to be embedded in the format string.
	 *
	 * Usage example:
	 *
	 *		// Writes to the release console
	 *		ReleaseConsoleOutput("This is a number: %d", a_number);
	 */
	void (*ReleaseConsoleOutput)(const char* fmt, ...);

	/**
	 * @brief Displays a popup message on the runner side, typically to convey information or warnings to the user.
	 *
	 * @param msg The string message to be displayed in the popup.
	 *
	 * Usage example:
	 *
	 *		// Displays a message to the user
	 *		ShowMessage("Hello from the other side!");
	 */
	void (*ShowMessage)(const char* msg);

	/**
	 * @brief Writes a formatted error message to the error console and triggers a runtime error.
	 *
	 * @param _error A string that contains the text of the error message. It can include embedded format tags.
	 * @param ... (Variadic arguments) A variable number of arguments to be embedded in the error string.
	 *
	 * Usage example:
	 *
	 *		// Triggers a runtime error with a custom message
	 *		YYError("MyFunction :: incorrect number of arguments");
	 */
	void (*YYError)(const char* _error, ...);


	// ########################################################################
	// MEMORY MANAGEMENT
	// ######################################################################## 

	/**
	 * @brief Allocates a block of memory of size _size.
	 *
	 * @param _size The size of the memory block to allocate, in bytes.
	 *
	 * @return A pointer to the allocated memory block. The pointer is
	 * null if the function fails to allocate memory.
	 *
	 * Usage example:
	 *
	 *		// Allocates a block of memory of size 10 bytes.
	 *		void* pMemoryBlock = YYAlloc(10);
	 */
	void* (*YYAlloc)(int _size);

	/**
	 * @brief Reallocates a block of memory to a new size.
	 *
	 * @param pOriginal A pointer to the memory block originally allocated
	 * with YYAlloc or YYRealloc.
	 * @param _newSize The new size of the memory block, in bytes.
	 *
	 * @return A pointer to the reallocated memory block. This might be
	 * different from pOriginal if the function had to move the memory
	 * block to enlarge it. Returns null if the function fails to reallocate
	 * memory.
	 *
	 * Usage example:
	 *
	 *		// Reallocate pMemoryBlock to 20 bytes.
	 *		void* pNewMemoryBlock = YYRealloc(pMemoryBlock, 20);
	 */
	void* (*YYRealloc)(void* pOriginal, int _newSize);

	/**
	 * @brief Frees a block of memory that was previously allocated.
	 *
	 * @param p A pointer to the memory block to be freed. This should have been
	 * returned by a previous call to YYAlloc or YYRealloc.
	 *
	 * Usage example:
	 *
	 *		// Frees the allocated memory block.
	 *		YYFree(pMemoryBlock);
	 */
	void  (*YYFree)(const void* p);

	/**
	 * @brief Duplicates a string by allocating memory for a new string and copying the
	 * content.
	 *
	 * @param _pS A pointer to the null-terminated string to duplicate.
	 *
	 * @return A pointer to the newly allocated string with the same content as _pS.
	 * Returns null if the function fails to allocate memory. The returned string must be
	 * freed using YYFree when it is no longer needed.
	 *
	 * Usage example:
	 *
	 *		// Duplicates the string.
	 *		const char* duplicatedString = YYStrDup(originalString);
	 */
	const char* (*YYStrDup)(const char* _pS);


	// ########################################################################
	// ARGUMENT PARSING
	// ######################################################################## 

	/**
	 * @brief Parses and retrieves a boolean value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the boolean value.
	 *
	 * @return The boolean value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		bool value = YYGetBool(pArgs, 0);
	 */
	bool (*YYGetBool)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a float value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the float value.
	 *
	 * @return The float value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		float value = YYGetFloat(pArgs, 1);
	 */
	float (*YYGetFloat)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a double-precision floating-point value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the double value.
	 *
	 * @return The double-precision floating-point value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		double value = YYGetReal(pArgs, 2);
	 */
	double (*YYGetReal)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a 32-bit integer value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the 32-bit integer value.
	 *
	 * @return The 32-bit integer value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		int32_t value = YYGetInt32(pArgs, 3);
	 */
	int32_t(*YYGetInt32)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a 32-bit unsigned integer value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the 32-bit unsigned integer value.
	 *
	 * @return The 32-bit unsigned integer value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		uint32_t value = YYGetUint32(pArgs, 4);
	 */
	uint32_t(*YYGetUint32)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a 64-bit integer value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the 64-bit integer value.
	 *
	 * @return The 64-bit integer value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		int64 value = YYGetInt64(pArgs, 5);
	 */
	int64(*YYGetInt64)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a pointer value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the pointer value.
	 *
	 * @return The pointer value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		void* value = YYGetPtr(pArgs, 6);
	 */
	void* (*YYGetPtr)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves either a pointer value or an integer value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the pointer or integer value.
	 *
	 * @return The pointer or integer value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		intptr_t value = YYGetPtrOrInt(pArgs, 7);
	 */
	intptr_t(*YYGetPtrOrInt)(const RValue* _pBase, int _index);

	/**
	 * @brief Parses and retrieves a string value from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the string value.
	 *
	 * @return The string value present at the specified index in the argument array.
	 *
	 * Usage example:
	 *
	 *		const char* value = YYGetString(pArgs, 8);
	 *
	 * @note The user should not free the returned const char*, as it is managed by the internal memory management system.
	 *       However, it is essential to duplicate it if you need to store it since the runner invalidates these strings at
	 *       the end of each step.
	 */
	const char* (*YYGetString)(const RValue* _pBase, int _index);


	// ########################################################################
	// RVALUE PARSING
	// ######################################################################## 

	/**
	 * @brief Attempts to retrieve a boolean value by parsing|casting from a single RValue.
	 *
	 * @param _pValue A pointer to the RValue.
	 *
	 * @return The boolean value obtained by casting the specified RValue.
	 *
	 * Usage example:
	 *
	 *		bool value = BOOL_RValue(pValue);
	 */
	bool (*BOOL_RValue)(const RValue* _pValue);

	/**
	 * @brief Attempts to retrieve a double-precision floating-point value by parsing|casting from a single RValue.
	 *
	 * @param _pValue A pointer to the RValue.
	 *
	 * @return The double-precision floating-point value obtained by casting the specified RValue.
	 *
	 * Usage example:
	 *
	 *		double value = REAL_RValue(pValue);
	 */
	double (*REAL_RValue)(const RValue* _pValue);

	/**
	 * @brief Attempts to retrieve a pointer value by parsing|casting from a single RValue.
	 *
	 * @param _pValue A pointer to the RValue.
	 *
	 * @return The pointer value obtained by casting the specified RValue.
	 *
	 * Usage example:
	 *
	 *		void* value = PTR_RValue(pValue);
	 */
	void* (*PTR_RValue)(const RValue* _pValue);

	/**
	 * @brief Attempts to retrieve a 64-bit integer value by parsing|casting from a single RValue.
	 *
	 * @param _pValue A pointer to the RValue.
	 *
	 * @return The 64-bit integer value obtained by casting the specified RValue.
	 *
	 * Usage example:
	 *
	 *		int64 value = INT64_RValue(pValue);
	 */
	int64(*INT64_RValue)(const RValue* _pValue);

	/**
	 * @brief Attempts to retrieve a 32-bit integer value by parsing|casting from a single RValue.
	 *
	 * @param _pValue A pointer to the RValue.
	 *
	 * @return The 32-bit integer value obtained by casting the specified RValue.
	 *
	 * Usage example:
	 *
	 *		int32_t value = INT32_RValue(pValue);
	 */
	int32_t(*INT32_RValue)(const RValue* _pValue);


	// ########################################################################
	// HASHING
	// ########################################################################

	/**
	 * @brief Calculates a hash value from a given RValue.
	 *
	 * @param _pValue A pointer to the RValue from which to calculate the hash value.
	 *
	 * @return The calculated hash value for the specified RValue.
	 *
	 * Usage example:
	 *
	 *		int hashValue = HASH_RValue(pValue);
	 */
	int (*HASH_RValue)(const RValue* _pValue);

	
	// ########################################################################
	// COPYING, GETTING, SETTING & FREEING RVALUES
	// ########################################################################

	/**
	 * @brief Assigns an RValue to another, considering a given context and index.
	 *
	 * @param _pDest Pointer to the destination RValue.
	 * @param _pV Pointer to the source RValue.
	 * @param _pPropSelf Pointer to the YYObjectBase, representing the "self" or context.
	 * @param _index Index within an array of RValues, if applicable.
	 *
	 * Usage example:
	 *
	 *		SET_RValue(&destinationRValue, &sourceRValue, pContext, arrayIndex);
	 */
	void (*SET_RValue)(RValue* _pDest, RValue* _pV, YYObjectBase* _pPropSelf, int _index);

	/**
	 * @brief Retrieves an RValue, considering a given context and index, and potentially prepares an array.
	 *
	 * @param _pRet Pointer to the RValue where the result will be stored.
	 * @param _pV Pointer to the source RValue.
	 * @param _pPropSelf Pointer to the YYObjectBase, representing the "self" or context.
	 * @param _index Index within an array of RValues, if applicable.
	 * @param fPrepareArray Boolean flag indicating whether to prepare an array.
	 * @param fPartOfSet Boolean flag indicating whether this action is part of a set operation.
	 *
	 * @return Boolean indicating the success of the get operation.
	 *
	 * @note Ensure to call FREE_RValue on the retrieved RValue once done to avoid memory leaks.
	 */
	bool (*GET_RValue)(RValue* _pRet, RValue* _pV, YYObjectBase* _pPropSelf, int _index, bool fPrepareArray, bool fPartOfSet);

	/**
	 * @brief Copies the value from one RValue to another.
	 *
	 * @param _pDest Pointer to the destination RValue.
	 * @param _pSource Pointer to the source RValue.
	 *
	 * Usage example:
	 *
	 *		COPY_RValue(&destinationRValue, &sourceRValue);
	 */
	void (*COPY_RValue)(RValue* _pDest, const RValue* _pSource);

	/**
	 * @brief Retrieves the kind/type of the given RValue.
	 *
	 * @param _pValue Pointer to the RValue to retrieve the kind from.
	 *
	 * @return Integer representing the kind/type of the RValue.
	 */
	int (*KIND_RValue)(const RValue* _pValue);

	/**
	 * @brief Frees the memory associated with a given RValue.
	 *
	 * @param _pValue Pointer to the RValue to be freed.
	 *
	 * Usage example:
	 *
	 *		FREE_RValue(&myRValue);
	 *
	 * @note Always call this function after you are done using an RValue to prevent memory leaks.
	 */
	void (*FREE_RValue)(RValue* _pValue);

	/**
	 * @brief Creates a new string RValue.
	 *
	 * @param _pVal Pointer to the RValue where the string will be stored.
	 * @param _pS Pointer to the source string.
	 *
	 * Usage example:
	 *
	 *		YYCreateString(&myRValue, "Hello, world!");
	 */
	void (*YYCreateString)(RValue* _pVal, const char* _pS);
	
	/**
	 * @brief Creates a new array RValue.
	 *
	 * @param pRValue Pointer to the RValue where the array will be stored.
	 * @param n_values The number of elements (double values) to store in the array.
	 * @param values Pointer to the array of double values that should be stored.
	 *
	 * Usage example:
	 *
	 *		double myValues[] = {1.0, 2.0, 3.0};
	 *		YYCreateArray(&myRValue, 3, myValues);
	 *
	 * @note This function initializes an RValue as an array and populates it with the provided double values.
	 */
	void (*YYCreateArray)(RValue* pRValue, int n_values, const double* values);

	// finding and runnine user scripts from name
	int (*Script_Find_Id)(const char* name);
	bool (*Script_Perform)(int ind, CInstance* selfinst, CInstance* otherinst, int argc, RValue* res, RValue* arg);

	// finding builtin functions
	bool  (*Code_Function_Find)(const char* name, int* ind);

	// http functions
	void (*HTTP_Get)(const char* _pFilename,  PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV);
	void (*HTTP_Post)(const char* _pFilename, const char* _pPost, PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV);
	void (*HTTP_Request)(const char* _url, const char* _method, const char* _headers, const char* _pBody, PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV, int _contentLength);

	// sprite loading helper functions
	int (*ASYNCFunc_SpriteAdd)(HTTP_REQ_CONTEXT* _pContext, void* _p, int* _pMap);
	void (*ASYNCFunc_SpriteCleanup)(HTTP_REQ_CONTEXT* _pContext);
	HSPRITEASYNC (*CreateSpriteAsync)(int* _pSpriteIndex, int _xOrig, int _yOrig, int _numImages, int _flags);


	// ########################################################################
	// TIMING
	// ########################################################################

	/**
	 * @brief Retrieves the current time in microseconds (since start).
	 *
	 * This function returns the current time calculated from the start of the app,
	 * measured in microseconds. It provides high-resolution time data useful for precise
	 * timing, benchmarking, and profiling.
	 *
	 * @return An int64 representing the number of microseconds elapsed since the start of the app.
	 *
	 * @note Be mindful of the data type sizes when performing calculations to avoid overflow.
	 */
	int64(*Timing_Time)(void);

	/**
	 * @brief Pauses the execution of the main thread for a specified time.
	 *
	 * `Timing_Sleep` halts the execution of the calling thread for at least the
	 * specified duration in microseconds, permitting the system to execute other threads.
	 * The precision of the sleep duration can be influenced by the `precise` parameter.
	 *
	 * @param slp The duration for which the thread will sleep, in microseconds.
	 * @param precise Boolean flag indicating whether to enforce precise sleeping.
	 *        - true:  Aims to ensure the sleep duration is as exact as possible.
	 *        - false: The sleep duration may be slightly shorter or longer.
	 *
	 * @note Prolonged and precise sleep durations might impact system power usage
	 *       and performance adversely. Use precise sleeps judiciously, balancing
	 *       requirement against resource utilization.
	 */
	void (*Timing_Sleep)(int64 slp, bool precise);


	// ########################################################################
	// MUTEX HANDLING
	// ########################################################################
	
	/**
	 * Mutexes, or mutual exclusions, are used in concurrent programming to avoid the simultaneous
	 * execution of a piece of code that accesses shared resources, such as runtime elements like ds_maps, 
	 * ds_lists, and buffers, by multiple threads.
	 * 
	 * This helps in avoiding race conditions, ensuring that the shared resources are accessed in a mutually
	 * exclusive manner. When a thread acquires a lock on a mutex, any other thread attempting to acquire the
	 * same lock will block until the first thread releases the lock.
	 */
	
	/**
	 * @brief Creates a new mutex with the given name.
	 *
	 * @param _name A string representing the name of the mutex to be created.
	 *
	 * @return A handle to the newly created mutex.
	 *
	 * Usage example:
	 *
	 *		HYYMUTEX myMutex = YYMutexCreate("myMutexName");
	 *
	 * @note This is the runner's own implementation of mutexes, used for ensuring controlled access
	 *       to shared resources in a concurrent environment.
	 */
	HYYMUTEX(*YYMutexCreate)(const char* _name);

	/**
	 * @brief Destroys a given mutex.
	 *
	 * @param hMutex A handle to the mutex to be destroyed.
	 *
	 * Usage example:
	 *
	 *		YYMutexDestroy(myMutex);
	 */
	void (*YYMutexDestroy)(HYYMUTEX hMutex);

	/**
	 * @brief Locks a given mutex.
	 *
	 * @param hMutex A handle to the mutex to be locked.
	 *
	 * Usage example:
	 *
	 *		YYMutexLock(myMutex);
	 *
	 * @note This function will block if the mutex is already locked by another thread,
	 *       and it will return once the mutex has been successfully locked.
	 */
	void (*YYMutexLock)(HYYMUTEX hMutex);

	/**
	 * @brief Unlocks a given mutex.
	 *
	 * @param hMutex A handle to the mutex to be unlocked.
	 *
	 * Usage example:
	 *
	 *		YYMutexUnlock(myMutex);
	 *
	 * @note After unlocking, any other threads waiting to lock the mutex will be unblocked.
	 */
	void (*YYMutexUnlock)(HYYMUTEX hMutex);


	// ########################################################################
	// ASYNC EVENTS
	// ########################################################################

	/**
	 * @brief Triggers an asynchronous event, passing a ds_map to it.
	 *
	 * @param _map The index of the ds_map to pass to the event.
	 * @param _event The event code number to trigger.
	 *
	 * Usage example:
	 *
	 *		CreateAsyncEventWithDSMap(myDsMap, myEventCode);
	 *
	 * @note The ds_map passed to the event should not be manually freed post-triggering.
	 */
	void (*CreateAsyncEventWithDSMap)(int _map, int _event);

	/**
	 * @brief Triggers an asynchronous event, passing a ds_map and a GML buffer to it.
	 *
	 * @param _map The index of the ds_map to pass to the event.
	 * @param _buffer The index of the GML buffer to pass to the event.
	 * @param _event The event code number to trigger.
	 *
	 * Usage example:
	 *
	 *		CreateAsyncEventWithDSMapAndBuffer(myDsMap, myBuffer, myEventCode);
	 *
	 * @note The ds_map and the GML buffer should not be manually freed post-triggering.
	 *       They will be automatically freed once the event is finished.
	 */
	void (*CreateAsyncEventWithDSMapAndBuffer)(int _map, int _buffer, int _event);
	

	// ########################################################################
	// DS_MAP MANIPULATION
	// ########################################################################

	/**
	 * @brief Creates a new ds_map with specified key-value pairs.
	 *
	 * @param _num The number of key-value pairs to be added to the ds_map.
	 * @param ... Key and value pairs to be added to the ds_map. Only double and string (char*) types are supported.
	 *
	 * @return The index referencing the created ds_map.
	 *
	 * Usage example:
	 *
	 *		int myDsMap = CreateDsMap(2, "key1", 1.23, "key2", "value2");
	 *
	 * @note Ensure that the keys and values are passed in pairs and the count (_num) matches the total number of arguments passed.
	 */
	int (*CreateDsMap)(int _num, ...);

	/**
	 * @brief Adds a key-double pair to a ds_map.
	 *
	 * @param _index The index of the ds_map to which the key-value pair will be added.
	 * @param _pKey The key to be associated with the value.
	 * @param value The double value to be added.
	 *
	 * @return True if the addition is successful, otherwise False.
	 *
	 * Usage example:
	 *
	 *		bool success = DsMapAddDouble(myDsMap, "key3", 3.45);
	 */
	bool (*DsMapAddDouble)(int _index, const char* _pKey, double value);

	/**
	 * @brief Adds a key-string pair to a ds_map.
	 *
	 * @param _index The index of the ds_map to which the key-value pair will be added.
	 * @param _pKey The key to be associated with the value.
	 * @param pVal The string value to be added.
	 *
	 * @return True if the addition is successful, otherwise False.
	 *
	 * Usage example:
	 *
	 *		bool success = DsMapAddString(myDsMap, "key4", "value4");
	 */
	bool (*DsMapAddString)(int _index, const char* _pKey, const char* pVal);

	/**
	 * @brief Adds a key-int64 pair to a ds_map.
	 *
	 * @param _index The index of the ds_map to which the key-value pair will be added.
	 * @param _pKey The key to be associated with the value.
	 * @param value The int64 value to be added.
	 *
	 * @return True if the addition is successful, otherwise False.
	 *
	 * Usage example:
	 *
	 *		bool success = DsMapAddInt64(myDsMap, "key5", 123456789012345);
	 */
	bool (*DsMapAddInt64)(int _index, const char* _pKey, int64 value);


	// ########################################################################
	// BUFFER ACCESS
	// ########################################################################

	/**
	 * @brief Retrieves the content of a GameMaker Language (GML) buffer.
	 *
	 * @param _index The index of the GML buffer to get content from.
	 * @param _ppData A pointer to store the address of the retrieved content.
	 * @param _pDataSize A pointer to store the size of the retrieved content.
	 *
	 * @return A boolean indicating the success of the retrieval.
	 *
	 * Usage example:
	 *
	 *		void* data;
	 *		int dataSize;
	 *		bool success = BufferGetContent(bufferIndex, &data, &dataSize);
	 *
	 * @note The method creates a copy of the data from the runner, which needs to be properly freed to prevent memory leaks.
	 */
	bool (*BufferGetContent)(int _index, void** _ppData, int* _pDataSize);

	/**
	 * @brief Writes content into a GML buffer.
	 *
	 * @param _index The index of the GML buffer to write content to.
	 * @param _dest_offset The destination offset within the GML buffer to start writing data.
	 * @param _pSrcMem A pointer to the source memory to write from.
	 * @param _size The size of the data to write.
	 * @param _grow A boolean indicating whether the buffer should grow if necessary.
	 * @param _wrap A boolean indicating whether the buffer should wrap if necessary.
	 *
	 * @return The number of bytes written to the buffer.
	 *
	 * Usage example:
	 *
	 *		int bytesWritten = BufferWriteContent(bufferIndex, offset, srcData, dataSize, true, false);
	 */
	int (*BufferWriteContent)(int _index, int _dest_offset, const void* _pSrcMem, int _size, bool _grow, bool _wrap);

	/**
	 * @brief Creates a new GML buffer.
	 *
	 * @param _size The size of the new buffer.
	 * @param _bf The format of the new buffer, specified using eBuffer_Format enum.
	 * @param _alignment The memory alignment of the new buffer.
	 *
	 * @return The index of the newly created buffer.
	 *
	 * Usage example:
	 *
	 *		int newBufferIndex = CreateBuffer(1024, eBuffer_Format_Grow, 0);
	 *
	 * Enum values for eBuffer_Format:
	 * - eBuffer_Format_Fixed:    0
	 * - eBuffer_Format_Grow:     1
	 * - eBuffer_Format_Wrap:     2
	 * - eBuffer_Format_Fast:     3
	 * - eBuffer_Format_VBuffer:  4
	 * - eBuffer_Format_Network:  5
	 */
	int (*CreateBuffer)(int _size, enum eBuffer_Format _bf, int _alignment);


	// ########################################################################
	// VARIABLES
	// ########################################################################

	volatile bool* pLiveConnection;
	int* pHTTP_ID;


	// ########################################################################
	// DS_LIST AND DS_MAP MANIPULATION
	// ########################################################################

	/**
	 * @brief Creates a new ds_list.
	 *
	 * @return The index of the newly created ds_list.
	 *
	 * Usage example:
	 *
	 *		int newListIndex = DsListCreate();
	 */
	int (*DsListCreate)();

	/**
	 * @brief Adds a ds_list to a ds_map with a specified key.
	 *
	 * @param _dsMap The index of the ds_map.
	 * @param _key The key associated with the ds_list in the ds_map.
	 * @param _listIndex The index of the ds_list to add to the ds_map.
	 *
	 * @note When a ds_list added to a ds_map using DsMapAddList is removed
	 *       (e.g., via DsMapClear), it is automatically freed by the runner
	 *       and does not require manual freeing.
	 * 
	 * Usage example:
	 *
	 *		DsMapAddList(mapIndex, "myListKey", listIndex);
	 */
	void (*DsMapAddList)(int _dsMap, const char* _key, int _listIndex);

	/**
	 * @brief Adds a ds_map to a ds_list.
	 *
	 * @param _dsList The index of the ds_list.
	 * @param _mapIndex The index of the ds_map to add to the ds_list.
	 *
	 * @note When a ds_map added to a ds_list using DsListAddMap is removed
	 *       (e.g., via DsListClear), it is also automatically freed by the
	 *       runner and does not require manual freeing.
	 * 
	 * Usage example:
	 *
	 *		DsListAddMap(listIndex, mapIndex);
	 */
	void (*DsListAddMap)(int _dsList, int _mapIndex);

	/**
	 * @brief Clears all key-value pairs from a ds_map.
	 *
	 * @param _dsMap The index of the ds_map to clear.
	 *
	 * @note Clearing a ds_map with DsMapClear will also automatically free
	 *       any ds_lists that have been added to it with DsMapAddList,
	 *       ensuring that no memory leaks occur.
	 * 
	 * Usage example:
	 *
	 *		DsMapClear(mapIndex);
	 */
	void (*DsMapClear)(int _dsMap);

	/**
	 * @brief Clears all elements from a ds_list.
	 *
	 * @param _dsList The index of the ds_list to clear.
	 *
	 * @note Clearing a ds_list with DsListClear will also automatically free
	 *       any ds_maps that have been added to it with DsListAddMap,
	 *       avoiding any memory leaks.
	 * 
	 * Usage example:
	 *
	 *		DsListClear(listIndex);
	 */
	void (*DsListClear)(int _dsList);


	// ########################################################################
	// FILES
	// ########################################################################

	bool (*BundleFileExists)(const char* _pszFileName);
	bool (*BundleFileName)(char* _name, int _size, const char* _pszFileName);
	bool (*SaveFileExists)(const char* _pszFileName);
	bool (*SaveFileName)(char* _name, int _size, const char* _pszFileName);


	// ########################################################################
	// BASE64 ENCODE
	// ########################################################################

	/**
	 * @brief Encodes binary data using Base64 encoding.
	 *
	 * This function takes binary data as input and provides a Base64-encoded output.
	 * Base64 encoding is commonly used to encode binary data, especially when that data
	 * needs to be stored and transferred over media that is designed to deal with text.
	 * It can be used to encode data in HTTP post calls or to encode data read from a GML buffer, for example.
	 *
	 * @param input_buf Pointer to the binary data to be encoded.
	 * @param input_len Length (in bytes) of the data to be encoded.
	 * @param output_buf Pointer to the buffer where the encoded data will be stored.
	 * @param output_len Length of the output buffer. This should be at least 4/3 times the input length, to ensure that there is enough space to hold the encoded data.
	 *
	 * @return Returns `true` if the encoding is successful, and `false` otherwise. The function might fail if there is not enough space in the output buffer to hold the encoded data.
	 *
	 * Usage example:
	 *
	 *		const char* binaryData = "Binary data goes here";
	 *		size_t binaryDataLength = strlen(binaryData);
	 *		char encodedData[200]; // Ensure the output buffer is large enough
	 *
	 *		bool success = Base64Encode(binaryData, binaryDataLength, encodedData, sizeof(encodedData));
	 *
	 * @note Ensure the output buffer is large enough to store the encoded data.
	 */
	bool (*Base64Encode)(const void* input_buf, size_t input_len, void* output_buf, size_t output_len);
	
	// ########################################################################
	// DS_LIST MANIPULATION
	// ########################################################################

	/**
	 * @brief Adds a 64-bit integer value to a ds_list.
	 *
	 * Appends a 64-bit integer (int64) to the specified ds_list,
	 * ensuring that large integer values can be stored without truncation
	 * or data loss. Ds_lists are dynamic arrays that can store different
	 * types of data, in this case, a 64-bit integer.
	 *
	 * @param _dsList The index of the ds_list to which the 64-bit integer will be added.
	 * @param _value The 64-bit integer value to be added to the ds_list.
	 *
	 * @note Ensure the ds_list index provided is valid and the ds_list is properly initialized.
	 *
	 * Usage example:
	 *
	 *		int myDsList = DsListCreate(); // Assume DsListCreate is a function that creates a ds_list
	 *		int64 myValue = 1234567890123456789;
	 *		DsListAddInt64(myDsList, myValue);
	 */
	void (*DsListAddInt64)(int _dsList, int64 _value);


	// ########################################################################
	// FILE & DIRECTORY WHITELISTING
	// ########################################################################

	void (*AddDirectoryToBundleWhitelist)(const char* _pszFilename);
	void (*AddFileToBundleWhitelist)(const char* _pszFilename);
	void (*AddDirectoryToSaveWhitelist)(const char* _pszFilename);
	void (*AddFileToSaveWhitelist)(const char* _pszFilename);

	// ########################################################################
	// UTILITIES
	// ########################################################################

	/**
	 * @brief Retrieves the string representation of the kind/type of an RValue.
	 *
	 * The function obtains the kind of an RValue, representing its type, and returns
	 * its string representation. Useful for debugging, logging, or any situation
	 * where the textual depiction of an RValue's type is necessary.
	 *
	 * @param _pV A pointer to the RValue whose kind/type name is to be retrieved.
	 *
	 * @return A string literal representing the kind/type of the given RValue.
	 *
	 * @note The returned string should not be freed or modified.
	 *
	 * Usage example:
	 *
	 *		const RValue myValue = ...; // Assume this is populated appropriately
	 *		const char* typeName = KIND_NAME_RValue(&myValue);
	 *		printf("The type of myValue is: %s\n", typeName);
	 */
	const char* (*KIND_NAME_RValue)(const RValue* _pV);

	// ########################################################################
	// DS_MAP MANIPULATION (PART 2)
	// ########################################################################

	/**
	 * @brief Adds a key-boolean pair to a ds_map.
	 *
	 * @param _index The index of the ds_map to which the key-value pair will be added.
	 * @param _pKey The key to be associated with the value.
	 * @param value The boolean value to be added.
	 *
	 * Usage example:
	 *
	 *		DsMapAddBool(myDsMap, "keyBool", true);
	 *
	 * @note Ensure the ds_map referred to by _index is valid and created before using this function.
	 */
	void (*DsMapAddBool)(int _index, const char* _pKey, bool value);

	/**
	 * @brief Adds a key-RValue pair to a ds_map.
	 *
	 * @param _index The index of the ds_map to which the key-value pair will be added.
	 * @param _pKey The key to be associated with the value.
	 * @param value A pointer to the RValue to be added.
	 *
	 * Usage example:
	 *
	 *		RValue myValue;
	 *		// ... (initialize and set myValue)
	 *		DsMapAddRValue(myDsMap, "keyRValue", &myValue);
	 *
	 * @note Ensure the ds_map referred to by _index is valid and created before using this function.
	 * @note Ensure the RValue is properly initialized and set before using it as a parameter.
	 */
	void (*DsMapAddRValue)(int _index, const char* _pKey, RValue* value);
	
	/**
	 * @brief Frees a ds_map from memory.
	 *
	 * @param _index The index of the ds_map to be freed.
	 *
	 * Usage example:
	 *
	 *		DestroyDsMap(myDsMap);
	 *
	 * @note Maps utilized to trigger asynchronous events do not require manual
	 *       freeing and will be automatically freed post-event triggering.
	 */
	void (*DestroyDsMap)(int _index);

	// ########################################################################
	// STRUCT MANIPULATION
	// ########################################################################

	/**
	 * @brief Initializes a new structure in the given RValue.
	 *
	 * @param _pStruct A pointer to the RValue to initialize as a structure.
	 *
	 * Usage example:
	 *
	 *		RValue pStruct = {0};
	 *		StructCreate(&pStruct);
	 */
	void (*StructCreate)(RValue* _pStruct);

	/**
	 * @brief Adds a boolean value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _value The boolean value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddBool(pStruct, "key", true);
	 */
	void (*StructAddBool)(RValue* _pStruct, const char* _pKey, bool _value);

	/**
	 * @brief Adds a double-precision floating-point value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _value The double value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddDouble(pStruct, "key", 3.14);
	 */
	void (*StructAddDouble)(RValue* _pStruct, const char* _pKey, double _value);

	/**
	 * @brief Adds an integer value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _value The integer value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddInt(pStruct, "key", 42);
	 */
	void (*StructAddInt)(RValue* _pStruct, const char* _pKey, int _value);

	/**
	 * @brief Adds an RValue to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _pValue A pointer to the RValue to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddRValue(pStruct, "key", pValue);
	 */
	void (*StructAddRValue)(RValue* _pStruct, const char* _pKey, RValue* _pValue);

	/**
	 * @brief Adds a string value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _pValue The string value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddString(pStruct, "key", "value");
	 */
	void (*StructAddString)(RValue* _pStruct, const char* _pKey, const char* _pValue);

	// ########################################################################
	// DIRECTORY MANIPULATION
	// ########################################################################

	bool (*WhitelistIsDirectoryIn)(const char* _pszDirectory);
	bool (*WhiteListIsFilenameIn)(const char* _pszFilename);
	void (*WhiteListAddTo)(const char* _pszFilename, bool _bIsDir);
	bool (*DirExists)(const char* filename);
	
	// ########################################################################
	// BUFFER ACCESS (ADV)
	// ########################################################################

	/**
	 * @brief Retrieves an `IBuffer` interface corresponding to a GML buffer.
	 *
	 * This function retrieves an `IBuffer` interface for a given GML buffer (specified by an index).
	 * The `IBuffer` interface itself isn't directly accessible through the C++ API but can be used with
	 * `BufferGet` to access the data of a GML buffer from the runner without copying the data.
	 *
	 * @param ind The index of the GML buffer.
	 *
	 * @return A pointer to an `IBuffer` interface struct.
	 */
	IBuffer* (*BufferGetFromGML)(int ind);

	/**
	 * @brief Gets the current read position within a buffer.
	 *
	 * This function returns the current position of the read cursor within a buffer.
	 * This is important to know to ensure that data is read from the correct place in the buffer.
	 *
	 * @param buff Pointer to the `IBuffer` interface struct.
	 *
	 * @return The current read position in the buffer.
	 */
	int (*BufferTELL)(IBuffer* buff);

	/**
	 * @brief Obtains the actual memory pointer to the data of a buffer.
	 *
	 * This function retrieves a pointer to the actual data stored in a buffer,
	 * without copying the data. This is useful for efficiently accessing the data
	 * without the overhead of copying it to a new location.
	 *
	 * @param buff Pointer to the `IBuffer` interface struct.
	 *
	 * @return A pointer to the actual memory location of the buffer's data.
	 *
	 * @note Manipulating data directly through this pointer will affect the
	 *       actual data in the buffer.
	 */
	unsigned char* (*BufferGet)(IBuffer* buff);
	
	const char* (*FilePrePend)(void);

	// ########################################################################
	// STRUCT MANIPULATION (PART 2)
	// ########################################################################

	/**
	 * @brief Adds a 32-bit integer value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _value The 32-bit integer value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddInt32(pStruct, "key", 42);
	 */
	void (*StructAddInt32)(RValue* _pStruct, const char* _pKey, int32 _value);

	/**
	 * @brief Adds a 64-bit integer value to the specified structure with the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be added.
	 * @param _value The 64-bit integer value to add to the structure.
	 *
	 * Usage example:
	 *
	 *		StructAddInt64(pStruct, "key", 42);
	 */
	void (*StructAddInt64)(RValue* _pStruct, const char* _pKey, int64 _value);

	/**
	 * @brief Retrieves a member RValue from the specified structure using the associated key.
	 *
	 * @param _pStruct A pointer to the structure.
	 * @param _pKey The key associated with the value to be retrieved.
	 *
	 * @return A pointer to the RValue associated with the specified key in the structure.
	 *
	 * Usage example:
	 *
	 *		RValue* value = StructGetMember(pStruct, "key");
	 *
	 * @note This function returns a pointer to an RValue and should be used with care.
	 *       The user should ensure the returned RValue is correctly interpreted and handled.
	 */
	RValue* (*StructGetMember)(RValue* _pStruct, const char* _pKey);

	/**
	 * @brief Query the keys in a struct.
	 *
	 * @param _pStruct  Pointer to a VALUE_OBJECT RValue.
	 * @param _keys     Pointer to an array of const char* pointers to receive the names.
	 * @param _count    Length of _keys (in elements) on input, number filled on output.
	 *
	 * @return Total number of keys in the struct.
	 *
	 * NOTE: The strings in _keys are owned by the runner. You do not need to free them, however
	 * you should make a copy if you intend to keep them around as the runner may invalidate them
	 * in the future when performing variable modifications.
	 *
	 * Usage example:
	 *
	 *    // Get total number of keys in struct
	 *    int num_keys = YYRunnerInterface_p->StructGetKeys(struct_rvalue, NULL, NULL);
	 *
	 *    // Fetch keys from struct
	 *    std::vector<const char*> keys(num_keys);
	 *    YYRunnerInterface_p->StructGetKeys(struct_rvalue, keys.data(), &num_keys);
	 *
	 *    // Loop over struct members
	 *    for(int i = 0; i < num_keys; ++i)
	 *    {
	 *        RValue *member = YYRunnerInterface_p->StructGetMember(struct_rvalue, keys[i]);
	 *        ...
	 *    }
	 */
	int (*StructGetKeys)(RValue* _pStruct, const char** _keys, int* _count);

	/**
	 * @brief Parses and retrieves a structure as an RValue from the argument array at the specified index.
	 *
	 * @param _pBase A pointer to the array of arguments.
	 * @param _index The index in the array from which to retrieve the structure.
	 *
	 * @return A pointer to the RValue representing the structure present at the specified index in the argument array.
	 *
	 * @note Care should be taken to ensure the retrieved RValue is indeed representing a structure, and appropriate
	 *       error handling should be implemented for cases where it might not be.
	 *
	 * Usage example:
	 *
	 *		RValue* value = YYGetStruct(pArgs, 3);
	 */
	RValue* (*YYGetStruct)(RValue* _pBase, int _index);

	// ########################################################################
	// EXTENSION OPTIONS
	// ########################################################################

	/**
	 * @brief Retrieves the value of a specified extension option as an RValue.
	 *
	 * @param result An RValue reference where the result will be stored.
	 * @param _ext The asset name of the extension whose option value needs to be retrieved.
	 * @param _opt The key associated with the extension option.
	 *
	 * Usage example:
	 *
	 *		extOptGetRValue(result, "MyExtension", "OptionKey");
	 *
	 * @note This function can be used to retrieve any type of value set by the extension user,
	 *       and developers should ensure the returned RValue is interpreted and handled correctly.
	 */
	void (*extOptGetRValue)(RValue& result, const char* _ext, const char* _opt);

	/**
	 * @brief Retrieves the value of a specified extension option as a string.
	 *
	 * @param _ext The asset name of the extension whose option value needs to be retrieved.
	 * @param _opt The key associated with the extension option.
	 *
	 * @return The string value of the specified extension option.
	 *
	 * Usage example:
	 *
	 *		const char* value = extOptGetString("MyExtension", "OptionKey");
	 */
	const char* (*extOptGetString)(const char* _ext, const char* _opt);

	/**
	 * @brief Retrieves the value of a specified extension option as a double.
	 *
	 * @param _ext The asset name of the extension whose option value needs to be retrieved.
	 * @param _opt The key associated with the extension option.
	 *
	 * @return The double value of the specified extension option.
	 *
	 * Usage example:
	 *
	 *		double value = extOptGetReal("MyExtension", "OptionKey");
	 */
	double (*extOptGetReal)(const char* _ext, const char* _opt);

	// ########################################################################
	// UTILITIES (PART 2)
	// ########################################################################

	/**
	 * @brief Determines whether the current game is being run from within the IDE.
	 *
	 * @return A boolean value representing whether the game is running from within the IDE.
	 *         Returns true if it is running from within the IDE, otherwise false.
	 *
	 * Usage example:
	 *
	 *		bool runningFromIDE = isRunningFromIDE();
	 *
	 * @note This function is particularly useful for implementing security checks, allowing
	 *       developers to conditionally enable or disable features based on the running environment
	 *       of the game. Developers should use this function judiciously to ensure the security and
	 *       integrity of the game.
	 */
	bool (*isRunningFromIDE)();

	/**
	 * @brief Retrieves the length of a specified YYArray.
	 *
	 * @param pRValue A pointer to the RValue representing the YYArray.
	 *
	 * @return The length of the specified YYArray.
	 *
	 * Usage example:
	 *
	 *		int length = YYArrayGetLength(pRValue);
	 *
	 * @note Before using this function, users should ensure that the provided RValue is indeed
	 *       of type VALUE_ARRAY (pRValue->kind == VALUE_ARRAY) to avoid undefined behavior.
	 *       Failing to confirm the type of RValue can lead to runtime errors or unexpected outcomes.
	 */
	int (*YYArrayGetLength)(RValue* pRValue);

	// ########################################################################
	// EXTENSIONS
	// ########################################################################

	/**
	 * @brief Retrieves the version of a specified extension in a "X.Y.Z" format.
	 *
	 * @param _ext The asset name of the extension whose version needs to be retrieved.
	 *
	 * @return The version of the specified extension as a string in "X.Y.Z" format.
	 *
	 * Usage example:
	 *
	 *		const char* version = extGetVersion("MyExtension");
	 *
	 * @note The returned string represents the version of the extension and can be used
	 *       to perform version checks or logging. Developers should be aware of the
	 *       format in which the version is returned and handle it appropriately.
	 */
	const char* (*extGetVersion)(const char* _ext);
};


#if defined(__YYDEFINE_EXTENSION_FUNCTIONS__)
extern YYRunnerInterface* g_pYYRunnerInterface;

// basic interaction with the user
#define DebugConsoleOutput(fmt, ...) g_pYYRunnerInterface->DebugConsoleOutput(fmt, __VA_ARGS__)
#define ReleaseConsoleOutput(fmt, ...) g_pYYRunnerInterface->ReleaseConsoleOutput(fmt, __VA_ARGS__)
inline void ShowMessage(const char* msg) { g_pYYRunnerInterface->ShowMessage(msg); }

// for printing error messages
#define YYError(_error, ...)				g_pYYRunnerInterface->YYError( _error, __VA_ARGS__ )

// alloc, realloc and free
inline void* YYAlloc(int _size) { return g_pYYRunnerInterface->YYAlloc(_size); }
inline void* YYRealloc(void* pOriginal, int _newSize) { return g_pYYRunnerInterface->YYRealloc(pOriginal, _newSize); }
inline void  YYFree(const void* p) { g_pYYRunnerInterface->YYFree(p); }
inline const char* YYStrDup(const char* _pS) { return g_pYYRunnerInterface->YYStrDup(_pS); }

// yyget* functions for parsing arguments out of the arg index
inline bool YYGetBool(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetBool(_pBase, _index); }
inline float YYGetFloat(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetFloat(_pBase, _index); }
inline double YYGetReal(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetReal(_pBase, _index); }
inline int32_t YYGetInt32(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetInt32(_pBase, _index); }
inline uint32_t YYGetUint32(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetUint32(_pBase, _index); }
inline int64 YYGetInt64(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetInt64(_pBase, _index); }
inline void* YYGetPtr(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetPtr(_pBase, _index); }
inline intptr_t YYGetPtrOrInt(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetPtrOrInt(_pBase, _index); }
inline const char* YYGetString(const RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetString(_pBase, _index); }
inline RValue* YYGetStruct(RValue* _pBase, int _index) { return g_pYYRunnerInterface->YYGetStruct(_pBase, _index); }

// typed get functions from a single rvalue
inline bool BOOL_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->BOOL_RValue(_pValue); }
inline double REAL_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->REAL_RValue(_pValue); }
inline void* PTR_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->PTR_RValue(_pValue); }
inline int64 INT64_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->INT64_RValue(_pValue); }
inline int32_t INT32_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->INT32_RValue(_pValue); }

// calculate hash values from an RValue
inline int HASH_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->HASH_RValue(_pValue); }

// copying, setting and getting RValue
inline void SET_RValue(RValue* _pDest, RValue* _pV, YYObjectBase* _pPropSelf, int _index) { return g_pYYRunnerInterface->SET_RValue(_pDest, _pV, _pPropSelf, _index); }
inline bool GET_RValue(RValue* _pRet, RValue* _pV, YYObjectBase* _pPropSelf, int _index, bool fPrepareArray = false, bool fPartOfSet = false) { return g_pYYRunnerInterface->GET_RValue(_pRet, _pV, _pPropSelf, _index, fPrepareArray, fPartOfSet); }
inline void COPY_RValue(RValue* _pDest, const RValue* _pSource) { g_pYYRunnerInterface->COPY_RValue(_pDest, _pSource); }
inline int KIND_RValue(const RValue* _pValue) { return g_pYYRunnerInterface->KIND_RValue(_pValue); }
inline void FREE_RValue(RValue* _pValue) { return g_pYYRunnerInterface->FREE_RValue(_pValue); }
inline void YYCreateString(RValue* _pVal, const char* _pS) { g_pYYRunnerInterface->YYCreateString(_pVal, _pS); }
inline const char *KIND_NAME_RValue(const RValue *_pV) { return g_pYYRunnerInterface->KIND_NAME_RValue(_pV); }

inline void YYCreateArray(RValue* pRValue, int n_values = 0, const double* values = NULL) { g_pYYRunnerInterface->YYCreateArray(pRValue, n_values, values); }

// finding and runnine user scripts from name
inline int Script_Find_Id(char* name) { return g_pYYRunnerInterface->Script_Find_Id(name); }
inline bool Script_Perform(int ind, CInstance* selfinst, CInstance* otherinst, int argc, RValue* res, RValue* arg) {
	return g_pYYRunnerInterface->Script_Perform(ind, selfinst, otherinst, argc, res, arg);
}

// finding builtin functions
inline bool  Code_Function_Find(char* name, int* ind) { return g_pYYRunnerInterface->Code_Function_Find(name, ind); }

// Http function
inline void HTTP_Get(const char* _pFilename,  PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV) { g_pYYRunnerInterface->HTTP_Get(_pFilename,  _async, _cleanup, _pV); }
inline void HTTP_Post(const char* _pFilename, const char* _pPost, PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV) { g_pYYRunnerInterface->HTTP_Post(_pFilename, _pPost, _async, _cleanup, _pV); }
inline void HTTP_Request(const char* _url, const char* _method, const char* _headers, const char* _pBody, PFUNC_async _async, PFUNC_cleanup _cleanup, void* _pV, int _contentLength = -1) {
	g_pYYRunnerInterface->HTTP_Request(_url, _method, _headers, _pBody, _async, _cleanup, _pV, _contentLength);
} // end HTTP_Request

// sprite async loading
inline HSPRITEASYNC CreateSpriteAsync(int* _pSpriteIndex, int _xOrig, int _yOrig, int _numImages, int _flags) {
	return g_pYYRunnerInterface->CreateSpriteAsync(_pSpriteIndex, _xOrig, _yOrig, _numImages, _flags);
} // end CreateSpriteAsync


// timing
inline int64 Timing_Time(void) { return g_pYYRunnerInterface->Timing_Time(); }
inline void Timing_Sleep(int64 slp, bool precise = false) { g_pYYRunnerInterface->Timing_Sleep(slp, precise); }

// mutex functions
inline HYYMUTEX YYMutexCreate(const char* _name) { return g_pYYRunnerInterface->YYMutexCreate(_name); }
inline void YYMutexDestroy(HYYMUTEX hMutex) { g_pYYRunnerInterface->YYMutexDestroy(hMutex); }
inline void YYMutexLock(HYYMUTEX hMutex) { g_pYYRunnerInterface->YYMutexLock(hMutex); }
inline void YYMutexUnlock(HYYMUTEX hMutex) { g_pYYRunnerInterface->YYMutexUnlock(hMutex); }

// ds map manipulation for 
inline void CreateAsyncEventWithDSMap(int _map, int _event) { return g_pYYRunnerInterface->CreateAsyncEventWithDSMap(_map, _event); }
inline void CreateAsyncEventWithDSMapAndBuffer(int _map, int _buffer, int _event) { return g_pYYRunnerInterface->CreateAsyncEventWithDSMapAndBuffer(_map, _buffer, _event); }
#define CreateDsMap(_num, ...) g_pYYRunnerInterface->CreateDsMap( _num, __VA_ARGS__ )

inline bool DsMapAddDouble(int _index, const char* _pKey, double value) { return g_pYYRunnerInterface->DsMapAddDouble(_index, _pKey, value); }
inline bool DsMapAddString(int _index, const char* _pKey, const char* pVal) { return g_pYYRunnerInterface->DsMapAddString(_index, _pKey, pVal); }
inline bool DsMapAddInt64(int _index, const char* _pKey, int64 value) { return g_pYYRunnerInterface->DsMapAddInt64(_index, _pKey, value); }
inline void DsMapAddList(int _dsMap, const char* _pKey, int _listIndex) { return g_pYYRunnerInterface->DsMapAddList(_dsMap, _pKey, _listIndex); }
inline void DsMapAddBool(int _dsMap, const char* _pKey, bool value) { return g_pYYRunnerInterface->DsMapAddBool(_dsMap, _pKey, value); }
inline void DsMapAddRValue(int _dsMap, const char* _pKey, RValue* value) { return g_pYYRunnerInterface->DsMapAddRValue(_dsMap, _pKey, value); }
inline void DsMapClear(int _index) { return g_pYYRunnerInterface->DsMapClear(_index); }
inline void DestroyDsMap(int _index) { g_pYYRunnerInterface->DestroyDsMap(_index); }

inline int DsListCreate() { return g_pYYRunnerInterface->DsListCreate(); }
inline void DsListAddMap(int _dsList, int _mapIndex) { return g_pYYRunnerInterface->DsListAddMap(_dsList, _mapIndex); }
inline void DsListClear(int _dsList) { return g_pYYRunnerInterface->DsListClear(_dsList); }

// buffer access
inline bool BufferGetContent(int _index, void **_ppData, int *_pDataSize) { return g_pYYRunnerInterface->BufferGetContent(_index, _ppData, _pDataSize); }
inline int BufferWriteContent(int _index, int _dest_offset, const void* _pSrcMem, int _size, bool _grow = false, bool _wrap = false) { return g_pYYRunnerInterface->BufferWriteContent(_index, _dest_offset, _pSrcMem, _size, _grow, _wrap); }
inline int CreateBuffer(int _size, enum eBuffer_Format _bf, int _alignment) { return g_pYYRunnerInterface->CreateBuffer(_size, _bf, _alignment); }

inline bool Base64Encode(const void* input_buf, size_t input_len, void* output_buf, size_t output_len) { return g_pYYRunnerInterface->Base64Encode(input_buf, input_len, output_buf, output_len); }

inline void AddDirectoryToBundleWhitelist(const char* _pszFilename) { g_pYYRunnerInterface->AddDirectoryToBundleWhitelist(_pszFilename); }
inline void AddFileToBundleWhitelist(const char* _pszFilename) { g_pYYRunnerInterface->AddFileToBundleWhitelist(_pszFilename); }
inline void AddDirectoryToSaveWhitelist(const char* _pszFilename) { g_pYYRunnerInterface->AddDirectoryToSaveWhitelist(_pszFilename); }
inline void AddFileToSaveWhitelist(const char* _pszFilename) { g_pYYRunnerInterface->AddFileToSaveWhitelist(_pszFilename); }

inline void YYStructCreate(RValue* _pStruct) { g_pYYRunnerInterface->StructCreate(_pStruct); }
inline void YYStructAddBool(RValue* _pStruct, const char* _pKey, double _value) { return g_pYYRunnerInterface->StructAddBool(_pStruct, _pKey, _value); }
inline void YYStructAddDouble(RValue* _pStruct, const char* _pKey, double _value) { return g_pYYRunnerInterface->StructAddDouble(_pStruct, _pKey, _value); }
inline void YYStructAddInt(RValue* _pStruct, const char* _pKey, int _value) { return g_pYYRunnerInterface->StructAddInt(_pStruct, _pKey, _value); }
inline void YYStructAddRValue(RValue* _pStruct, const char* _pKey, RValue* _pValue) { return g_pYYRunnerInterface->StructAddRValue(_pStruct, _pKey, _pValue); }
inline void YYStructAddString(RValue* _pStruct, const char* _pKey, const char* _pValue) { return g_pYYRunnerInterface->StructAddString(_pStruct, _pKey, _pValue); }

inline bool WhitelistIsDirectoryIn(const char* _pszDirectory) { return g_pYYRunnerInterface->WhitelistIsDirectoryIn(_pszDirectory); }
inline bool WhiteListIsFilenameIn(const char* _pszFilename) { return g_pYYRunnerInterface->WhiteListIsFilenameIn(_pszFilename); }
inline void WhiteListAddTo(const char* _pszFilename, bool _bIsDir) { return g_pYYRunnerInterface->WhiteListAddTo(_pszFilename, _bIsDir); }
inline bool DirExists(const char* filename) { return g_pYYRunnerInterface->DirExists(filename); }

inline IBuffer* BufferGetFromGML(int ind) { return g_pYYRunnerInterface->BufferGetFromGML(ind); }
inline int BufferTELL(IBuffer* buff) { return g_pYYRunnerInterface->BufferTELL(buff); }
inline unsigned char* BufferGet(IBuffer* buff) { return g_pYYRunnerInterface->BufferGet(buff); }
inline const char* FilePrePend(void) { return g_pYYRunnerInterface->FilePrePend(); }

inline void YYStructAddInt32(RValue* _pStruct, const char* _pKey, int32 _value) { return g_pYYRunnerInterface->StructAddInt32(_pStruct, _pKey, _value); }
inline void YYStructAddInt64(RValue* _pStruct, const char* _pKey, int64 _value) { return g_pYYRunnerInterface->StructAddInt64(_pStruct, _pKey, _value); }
inline RValue* YYStructGetMember(RValue* _pStruct, const char* _pKey) { return g_pYYRunnerInterface->StructGetMember(_pStruct, _pKey); }
inline int YYStructGetKeys(RValue* _pStruct, const char** _keys, int* _count) { return g_pYYRunnerInterface->StructGetKeys(_pStruct, _keys, _count); }


inline void extOptGetRValue(RValue& result, const char* _ext, const char* _opt) { return g_pYYRunnerInterface->extOptGetRValue(result, _ext, _opt); };
inline const char* extOptGetString(const char* _ext, const char* _opt) {	return g_pYYRunnerInterface->extOptGetString(_ext, _opt); }
inline double extOptGetReal(const char* _ext, const char* _opt) {	return g_pYYRunnerInterface->extOptGetReal(_ext, _opt);};

inline bool isRunningFromIDE(void) { return g_pYYRunnerInterface->isRunningFromIDE(); };

inline int YYArrayGetLength(RValue* pRValue) { return g_pYYRunnerInterface->YYArrayGetLength(pRValue); }

inline const char* extGetVersion(const char* _ext) { return g_pYYRunnerInterface->extGetVersion(_ext); }

#define g_LiveConnection	(*g_pYYRunnerInterface->pLiveConnection)
#define g_HTTP_ID			(*g_pYYRunnerInterface->pHTTP_ID)


#endif


/*
#define YY_HAS_FUNCTION(interface, interface_size, function) \
	(interface_size >= (offsetof(GameMaker_RunnerInterface, function) + sizeof(GameMaker_RunnerInterface::function)) && interface->function != NULL)

#define YY_REQUIRE_FUNCTION(interface, interface_size, function) \
	if(!GameMaker_HasFunction(interface, interface_size, function)) \
	{ \
		interface->DebugConsoleOutput("Required function missing: %s\n", #function); \
		interface->DebugConsoleOutput("This extension may not be compatible with this version of GameMaker\n"); \
		return false; \
	}
*/



#endif
