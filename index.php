<?php 
include'header.php' 
?>
<style type="text/css">

	.back-to-top {
		position: fixed;
		bottom: 25px;
		right: 25px;
		display: none;
	}
</style>
<br>

<link rel="stylesheet" type="text/css" href="vendor/datatables/dataTables.bootstrap4.min.css">
<!-- Begin Page Content -->
<div class="container-fluid">

	<div class="alert alert-warning alert-dismissible fade show" role="alert">
		<?php echo $ayarcek['site_duyuru']; ?>
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

	<div align="right">
		<a class="btn btn-primary btn-sm" href="/kurum/admin">Yönetim Paneli</a>
	</div>
	<!-- <div id="search_area">
		<h5>Arama Yap</h5>
		<input type="text" name="employee_search" id="employee_search" class="form-control input-lg" autocomplete="on" placeholder="Arama yapmaya başla." />
	</div> -->
	<br>
	<!-- DataTales Giriş -->	
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">Dahili Telefon Rehberi</h6>
		</div>
		<div class="card-body">

			<div class="table-responsive mt-3">
				<table class="table table-bordered table-hover table-sm table-striped" id="kisilertablosu">
					<thead>
						<tr>
							<th>S.Nu</th>
							<th>Adı ve Soyadı</th>
							<th>Dahili No</th>
							<th>Cep Telefonu</th>
							<th>Müdürlük</th>
							<th>Birim</th>
							<th>Meslek</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$sayi=0;
						$sorgu=$db->prepare("SELECT * FROM kisiler");
						$sorgu->execute();
						while ($kisibilgisi=$sorgu->fetch(PDO::FETCH_ASSOC)) { 
							$sayi++;
							?>
							<tr>
								<td><?php echo $kisibilgisi['kisi_id']; ?></td>
								<td><?php echo $kisibilgisi['kisi_isim']; ?></td>
								<td><?php echo $kisibilgisi['kisi_dahili']; ?></td>
								<td><?php echo $kisibilgisi['kisi_cep']; ?></td>
								<td><?php echo $kisibilgisi['kisi_mudurluk']; ?></td>
								<td><?php echo $kisibilgisi['kisi_birim']; ?></td>
								<td><?php echo $kisibilgisi['kisi_meslek']; ?></td>
							</tr>
						<?php } ?>            
					</tbody>
					<thead>
						<tr>
							<th>S.Nu</th>
							<th>Adı ve Soyadı</th>
							<th>Dahili No</th>
							<th>Cep Telefonu</th>
							<th>Müdürlük</th>
							<th>Birim</th>
							<th>Meslek</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<!--Datatables çıkış-->
</div>


<?php include'footer.php' ?>
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
<script src="vendor/datatables/dataTables.buttons.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$(window).scroll(function () {
			if ($(this).scrollTop() > 50) {
				$('#back-to-top').fadeIn();
			} else {
				$('#back-to-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-to-top').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 400);
			return false;
		});
	});
</script>

<script>
	(function(){

		function removeAccents ( data ) {
			if ( data.normalize ) {
        // Use I18n API if avaiable to split characters and accents, then remove
        // the accents wholesale. Note that we use the original data as well as
        // the new to allow for searching of either form.
        return data +' '+ data
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '');
    }

    return data;
}

var searchType = jQuery.fn.DataTable.ext.type.search;

searchType.string = function ( data ) {
	return ! data ?
	'' :
	typeof data === 'string' ?
	removeAccents( data ) :
	data;
};

searchType.html = function ( data ) {
	return ! data ?
	'' :
	typeof data === 'string' ?
	removeAccents( data.replace( /<.*?>/g, '' ) ) :
	data;
};

}());

	$("#kisilertablosu").DataTable({
		"searching": true,
		"paging": true,
		"order": [[ 0, "asc"]],
		"ordering": true,
		initComplete: function () {

			this.api().columns().every( function () {

				var column = this;
				var select = $('<select><option value=""></option></select>')
				.appendTo( $(column.footer()).empty() )
				.on( 'change', function () {

					var val = $.fn.dataTable.util.escapeRegex(
						$(this).val()
						);

					column
					.search( val ? '^'+val+'$' : '', true, true )
					.draw();
				} );

			} );
		}

	});
</script>