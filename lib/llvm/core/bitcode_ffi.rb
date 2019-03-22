# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib ["libLLVM-8.so.1", "LLVM-8"]

  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end

  # (Not documented)
  #
  # @method parse_bitcode(mem_buf, out_module, out_message)
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_module
  # @param [FFI::Pointer(**CharS)] out_message
  # @return [Integer]
  # @scope class
  attach_function :parse_bitcode, :LLVMParseBitcode, [:pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method parse_bitcode2(mem_buf, out_module)
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_module
  # @return [Integer]
  # @scope class
  attach_function :parse_bitcode2, :LLVMParseBitcode2, [:pointer, :pointer], :int

  # (Not documented)
  #
  # @method parse_bitcode_in_context(context_ref, mem_buf, out_module, out_message)
  # @param [FFI::Pointer(ContextRef)] context_ref
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_module
  # @param [FFI::Pointer(**CharS)] out_message
  # @return [Integer]
  # @scope class
  attach_function :parse_bitcode_in_context, :LLVMParseBitcodeInContext, [:pointer, :pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method parse_bitcode_in_context2(context_ref, mem_buf, out_module)
  # @param [FFI::Pointer(ContextRef)] context_ref
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_module
  # @return [Integer]
  # @scope class
  attach_function :parse_bitcode_in_context2, :LLVMParseBitcodeInContext2, [:pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method get_bitcode_module_in_context(context_ref, mem_buf, out_m, out_message)
  # @param [FFI::Pointer(ContextRef)] context_ref
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_m
  # @param [FFI::Pointer(**CharS)] out_message
  # @return [Integer]
  # @scope class
  attach_function :get_bitcode_module_in_context, :LLVMGetBitcodeModuleInContext, [:pointer, :pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method get_bitcode_module_in_context2(context_ref, mem_buf, out_m)
  # @param [FFI::Pointer(ContextRef)] context_ref
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_m
  # @return [Integer]
  # @scope class
  attach_function :get_bitcode_module_in_context2, :LLVMGetBitcodeModuleInContext2, [:pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method get_bitcode_module(mem_buf, out_m, out_message)
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_m
  # @param [FFI::Pointer(**CharS)] out_message
  # @return [Integer]
  # @scope class
  attach_function :get_bitcode_module, :LLVMGetBitcodeModule, [:pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method get_bitcode_module2(mem_buf, out_m)
  # @param [FFI::Pointer(MemoryBufferRef)] mem_buf
  # @param [FFI::Pointer(*ModuleRef)] out_m
  # @return [Integer]
  # @scope class
  attach_function :get_bitcode_module2, :LLVMGetBitcodeModule2, [:pointer, :pointer], :int

  # Writes a module to the specified path. Returns 0 on success.
  #
  # @method write_bitcode_to_file(m, path)
  # @param [FFI::Pointer(ModuleRef)] m
  # @param [String] path
  # @return [Integer]
  # @scope class
  attach_function :write_bitcode_to_file, :LLVMWriteBitcodeToFile, [:pointer, :string], :int

  # Writes a module to an open file descriptor. Returns 0 on success.
  #
  # @method write_bitcode_to_fd(m, fd, should_close, unbuffered)
  # @param [FFI::Pointer(ModuleRef)] m
  # @param [Integer] fd
  # @param [Integer] should_close
  # @param [Integer] unbuffered
  # @return [Integer]
  # @scope class
  attach_function :write_bitcode_to_fd, :LLVMWriteBitcodeToFD, [:pointer, :int, :int, :int], :int

  # Deprecated for LLVMWriteBitcodeToFD. Writes a module to an open file
  #     descriptor. Returns 0 on success. Closes the Handle.
  #
  # @method write_bitcode_to_file_handle(m, handle)
  # @param [FFI::Pointer(ModuleRef)] m
  # @param [Integer] handle
  # @return [Integer]
  # @scope class
  attach_function :write_bitcode_to_file_handle, :LLVMWriteBitcodeToFileHandle, [:pointer, :int], :int

  # Writes a module to a new memory buffer and returns it.
  #
  # @method write_bitcode_to_memory_buffer(m)
  # @param [FFI::Pointer(ModuleRef)] m
  # @return [FFI::Pointer(MemoryBufferRef)]
  # @scope class
  attach_function :write_bitcode_to_memory_buffer, :LLVMWriteBitcodeToMemoryBuffer, [:pointer], :pointer
end
