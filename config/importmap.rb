# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.6.4/dist/jquery.js"
pin "datatable", to: "https://ga.jspm.io/npm:datatable@2.0.2/index.js"
pin "underscore", to: "https://ga.jspm.io/npm:underscore@1.4.4/underscore.js"
pin "datatables.net-dt", to: "https://ga.jspm.io/npm:datatables.net-dt@1.13.3/js/dataTables.dataTables.mjs"
pin "datatables.net", to: "https://ga.jspm.io/npm:datatables.net@1.13.3/js/jquery.dataTables.mjs"
pin_all_from "app/javascript/theme", under: "theme"
pin "datatables", to: "https://cdn.datatables.net/autofill/2.5.3/css/autoFill.dataTables.min.css"
