// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import $ from "jquery"
import DataTable from "datatables.net-dt"
import "theme/scripts"
import "theme/chart-pie-demo"
import "theme/chart-area-demo"
import "theme/chart-bar-demo"
import "theme/datatables-simple-demo"


// alert('hi');

// $('#example').DataTable()

debugger
let table = new DataTable('#example', {
    responsive: true
});
