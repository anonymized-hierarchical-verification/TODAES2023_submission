#include <stream.h>
#include <ilang/vtarget-out/vtarget_gen.h>

/// the function to generate configuration
VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration();


/// Build the model
int main() {

  auto vtg_cfg = SetConfiguration();

  // build the model
  BSG_UPSTREAM upstream_ila;
  BSG_DOWNSTREAM downstream_ila;

  std::string verilog_file_name = "upstream_ila.v";
  std::ofstream fw_verilog(verilog_file_name);
  upstream_ila.model.FlattenHierarchy();
  upstream_ila.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  // verilog_file_name = "upstream_child_ila.v";
  // fw_verilog.open(verilog_file_name);
  // upstream_ila.model.child(0).ExportToVerilog(fw_verilog);
  // fw_verilog.close();

  verilog_file_name = "downstream_ila.v";
  fw_verilog.open(verilog_file_name);
  downstream_ila.model.FlattenHierarchy();
  downstream_ila.model.ExportToVerilog(fw_verilog);
  fw_verilog.close();

  // verilog_file_name = "downstream_child_ila.v";
  // fw_verilog.open(verilog_file_name);
  // downstream_ila.model.child(0).ExportToVerilog(fw_verilog);
  // fw_verilog.close();

  return 0;
}



VerilogVerificationTargetGenerator::vtg_config_t SetConfiguration() {

  // set ilang option, operators like '<' will refer to unsigned arithmetics
  SetUnsignedComparison(true); 
  
  VerilogVerificationTargetGenerator::vtg_config_t ret;
  ret.CosaSolver = "btor";
  ret.CosaPyEnvironment = "~/cosaEnv/bin/activate";
  ret.CosaPath = "~/CoSA";
  ret.CosaGenTraceVcd = true;
  ret.CosaAddKeep = false;

  /// other configurations
  ret.PortDeclStyle = VlgVerifTgtGenBase::vtg_config_t::NEW;
  ret.CosaGenJgTesterScript = true;
  //ret.CosaOtherSolverOptions = "--blackbox-array";
  //ret.ForceInstCheckReset = true;

  return ret;
}