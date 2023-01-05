<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <?php
      $sayac_degeri = file_get_contents('sayac.txt');
      $sayac_degeri = $sayac_degeri+1;
      file_put_contents('sayac.txt',$sayac_degeri);

      echo 'Görüntülenme Sayısı: '.$sayac_degeri;
      ?>
      <hr>
      <span>Copyright &copy; <?php echo date("Y"); ?> <a href="https://www.ugurarikan.com.tr">Uğur ARIKAN</a></span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a id="back-to-top" href="#" class="btn btn-secondary btn-lg back-to-top" role="button"><i class="fas fa-chevron-up"></i></a>


<!-- Bootstrap core JavaScript-->

<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>
<script src="vendor/sweetalert/sweetalert2.all.min.js"></script>


<script type="text/javascript">
  $(document).ready(function() {
    $("#sidebarToggle").trigger('click')
  });
</script>

</body>

</html>
