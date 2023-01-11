<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
	overflow: scroll;
}

.modal.show {
	display: block;
}

.modal_body {
	position: fixed;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 600px;
	padding: 40px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
}

.btn-open-popup {
	background-color: black;
	color: #595b65;
}

.material-symbols-outlined.hover {
	color: white;
}
</style>
</head>
<body>
	<footer class="footer bg-black-50" id="forMap">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 col-md-6 mb-5 mb-lg-0"></div>
				<div class="col-lg-2 col-md-5 mb-5 mb-lg-0"></div>
				<div class="col-lg-3 col-md-5"></div>
			</div>

			<div class="row align-items-center mt-5 px-3 bg-black mx-1">
				<div class="col-lg-4">
					<p class="text-white mt-3">
						Gymate © 2022 , Theme By <a href="https://themefisher.com/"
							class="text-color">Themefisher.com</a>
					</p>
				</div>

				<div class="col-lg-6 ml-auto text-right">
					<ul class="list-inline mb-0 footer-socials">
						<li class="list-inline-item"><a class="btn-open-popup"
							href="#forMap"><i class="ti-map-alt"></i></a></li>
						<li class="list-inline-item"><a
							href="https://www.facebook.com/themefisher"><i
								class="ti-facebook"></i></a></li>
						<li class="list-inline-item"><a
							href="https://twitter.com/themefisher"><i class="ti-twitter"></i></a></li>
						<li class="list-inline-item"><a
							href="https://github.com/themefisher/"><i class="ti-github"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- Modal -->
	<div class="modal">

		<div class="modal_body" id="map"
			style="width: 45%; height: 625px; margin: 0px;">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3233.1808569976342!2d128.59103321555452!3d35.86908452725332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e3c264a0f67b%3A0x6f6af951f8677f92!2z7JiI64u07KeB7JeF7KCE66y47ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1664862097713!5m2!1sko!2skr"
				width="100%" height="100%" style="border: 0;" allowfullscreen=""
				loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

		</div>
	</div>
	<script>
      const body = document.querySelector('body');
      const modal = document.querySelector('.modal');
      const btnOpenPopup = document.querySelector('.btn-open-popup');
      btnOpenPopup.addEventListener('click', () => {
        modal.classList.toggle('show');

        if (modal.classList.contains('show')) {
          body.style.overflow = 'hidden';
          initialize();
        }
      });

      modal.addEventListener('click', (event) => {
        if (event.target === modal) {
          modal.classList.toggle('show');

          if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });
    </script>

	<script type="text/javascript">
	  function addMarkers(map) {
	      const locations = {
	      }
	      const markers = [];
	      for (const location in locations) {
	        const markerOptions = {
	          map: map,
	          position: locations[location],
	          icon: './img/marker.png'
	        }
	        const marker = new google.maps.Marker(markerOptions);
	        markers.push(marker);
	      }
	      return markers;
	    }
    </script>
</body>
</html>