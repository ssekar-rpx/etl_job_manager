// Simple-DataTables
// https://github.com/fiduswriter/Simple-DataTables/wiki

import DataTable from "datatables.net-dt"

const datatablesSimple = document.getElementById('datatablesSimple');
if (datatablesSimple) {
  // new simpleDatatables.DataTable(datatablesSimple);

  debugger
  let table = new DataTable('#datatablesSimple', {
    responsive: true
  });
}


