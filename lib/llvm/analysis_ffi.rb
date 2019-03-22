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

  # @defgroup LLVMCAnalysis Analysis
  # @ingroup LLVMC
  #
  # @{
  #
  # <em>This entry is only for documentation and no real method. The FFI::Enum can be accessed via #enum_type(:verifier_failure_action).</em>
  #
  # === Options:
  # :abort_process ::
  #
  # :print_message ::
  #   verifier will print to stderr and abort()
  # :return_status ::
  #   verifier will print to stderr and return 1
  #
  # @method _enum_verifier_failure_action_
  # @return [Symbol]
  # @scope class
  enum :verifier_failure_action, [
    :abort_process, 0,
    :print_message, 1,
    :return_status, 2
  ]

  # Verifies that a module is valid, taking the specified action if not.
  #    Optionally returns a human-readable description of any invalid constructs.
  #    OutMessage must be disposed with LLVMDisposeMessage.
  #
  # @method verify_module(m, action, out_message)
  # @param [FFI::Pointer(ModuleRef)] m
  # @param [Symbol from _enum_verifier_failure_action_] action
  # @param [FFI::Pointer(**CharS)] out_message
  # @return [Integer]
  # @scope class
  attach_function :verify_module, :LLVMVerifyModule, [:pointer, :verifier_failure_action, :pointer], :int

  # Verifies that a single function is valid, taking the specified action. Useful
  #    for debugging.
  #
  # @method verify_function(fn, action)
  # @param [FFI::Pointer(ValueRef)] fn
  # @param [Symbol from _enum_verifier_failure_action_] action
  # @return [Integer]
  # @scope class
  attach_function :verify_function, :LLVMVerifyFunction, [:pointer, :verifier_failure_action], :int

  # Open up a ghostview window that displays the CFG of the current function.
  #    Useful for debugging.
  #
  # @method view_function_cfg(fn)
  # @param [FFI::Pointer(ValueRef)] fn
  # @return [nil]
  # @scope class
  attach_function :view_function_cfg, :LLVMViewFunctionCFG, [:pointer], :void

  # (Not documented)
  #
  # @method view_function_cfg_only(fn)
  # @param [FFI::Pointer(ValueRef)] fn
  # @return [nil]
  # @scope class
  attach_function :view_function_cfg_only, :LLVMViewFunctionCFGOnly, [:pointer], :void
end
