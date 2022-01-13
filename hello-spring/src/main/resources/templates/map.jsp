<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<body>
</div> <!-- /container -->
<div id="map" style="width:300px;height:200px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7847e03c67c7565c877efe014afc14f4&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
<script>

		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.396636,127.097567),
			level: 4
		};

		var map = new kakao.maps.Map(container, options);

		var markerPosition  = new kakao.maps.LatLng(37.396636,127.097567);

        var marker = new kakao.maps.Marker({  // 마커를 생성합니다
          position: markerPosition,
          text: '텍스트를 표시할 수 있어요!' // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다
        });

        marker.setMap(map); // 마커가 지도 위에 표시되도록 설정합니다

        var zoomControl = new kakao.maps.ZoomControl();

        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
        // 지도 오른쪽에 줌 컨트롤이 표시되도록 지도에 컨트롤을 추가한다.
	</script>
</body>
</html>