//= require app
//= require AdminLTE/plugins/datatables/jquery.dataTables.min
//= require AdminLTE/plugins/datatables/dataTables.bootstrap.min

$(function () {
  $("#example1").DataTable();
  $('#example2').DataTable({
    "paging": true,
    "lengthChange": false,
    "searching": false,
    "ordering": true,
    "info": true,
    "autoWidth": false
  });
});