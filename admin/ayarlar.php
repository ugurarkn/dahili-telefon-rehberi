<?php include 'header.php'; ?>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h5 class="font-weight-bold text-primary">Ayarlar</h5>
				</div>
				<div class="card-body">
					<form action="islemler/ajax.php" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
						<?php if (yetkikontrol()): ?>
							<div class="form-row">
								<div class="col-md-6 form-group">
									<label>Site Logo</label>
									<input type="file" class="form-control" name="site_logo">
								</div>
							</div>

							<div class="form-row">
								<div class="col-md-6 form-group">
									<label>Site Başlık</label>
									<input type="text" class="form-control" name="site_baslik" value="<?php echo $ayarcek['site_baslik'] ?>">
								</div>
							</div>


							<div class="form-row">
								<div class="col-md-6 form-group">
									<label>Site Açıklama</label>
									<input type="text" class="form-control" name="site_aciklama" value="<?php echo $ayarcek['site_aciklama'] ?>">
								</div>
							</div>
						<?php endif ?>
						<div class="form-row">
							<div class="col-md-6 form-group">
								<label>Site Duyuru</label>
								<textarea id="editor" type="text" class="form-control" name="site_duyuru"><?php echo $ayarcek['site_duyuru'] ?></textarea>
							</div>
						</div>
						<?php if (yetkikontrol()): ?>
							<div class="form-row">
								<div class="col-md-6 form-group">
									<label>Site Link</label>
									<input type="text" class="form-control" name="site_link" value="<?php echo $ayarcek['site_link'] ?>">
								</div>
							</div>


							<div class="form-row">
								<div class="col-md-6 form-group">
									<label>Site Mail Adresi</label>
									<input type="text" class="form-control" name="site_sahip_mail" value="<?php echo $ayarcek['site_sahip_mail'] ?>">
								</div>
							</div>
						<?php endif ?>
						<div class="form-row">
							<button type="submit" class="btn btn-primary" name="ayarkaydet">Kaydet</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="vendor/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	CKEDITOR.replace("editor");
</script>

<?php include 'footer.php' ?>

<?php 
if (@$_GET['durum']=="ok") { ?>
	<script type="text/javascript">
		Swal.fire({
			type: 'success',
			title: 'İşlem Başarılı',
			text: 'İşleminiz Başarıyla Gerçekleştirildi',
			confirmButtonText: "Tamam"
		})
	</script>
<?php } ?>


<?php 
if (@$_GET['durum']=="no") { ?>
	<script type="text/javascript">
		Swal.fire({
			type: 'error',
			title: 'Hata',
			text: 'İşleminiz Başarısız Oldu Lütfen Tekrar Deneyin',
			confirmButtonText: "Tamam"
		})
	</script>
	<?php } ?>