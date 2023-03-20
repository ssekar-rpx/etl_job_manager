// Simple-DataTables
// https://github.com/fiduswriter/Simple-DataTables/wiki

import $ from "jquery"

import DataTable from "datatables.net-dt"


const datatablesSimple = document.getElementById('datatablesSimple');

if (datatablesSimple) {
  // new simpleDatatables.DataTable(datatablesSimple);

  let table = new DataTable('#datatablesSimple', {
    responsive: true
  });

  $('#datatablesSimple tbody').on('click', 'td', function () {
    var tr = $(this).closest('tr');
    var row = table.row(tr);

    if (row.child.isShown()) {
      // This row is already open - close it
      row.child.hide();
      tr.removeClass('shown');
    } else {
      // Open this row
      row.child('hello im expanded row').show();
      tr.addClass('shown');
    }
  });
}



