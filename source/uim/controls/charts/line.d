module uim.controls.charts.line;

@safe: 
import uim.controls;

class DUIMLineChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMLineChartControl"));
}
mixin(ControlCalls!("UIMLineChartControl", "DUIMLineChartControl"));
mixin(ControlCalls!("UIMLineChart", "DUIMLineChartControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMLineChart);

    auto control = UIMLineChart;
  }
}

