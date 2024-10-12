<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>항공기 운항정보</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#fetch-data').on('click', function() {
        $.ajax({
            url: 'http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList',
            method: 'GET',
            dataType: 'xml', // API가 XML 형식으로 데이터를 반환
            data: {
                ServiceKey: 'uMMfPCvJ609ppQO2sRZIZ6Mfqhyxm5VdjPvIg6WlBJpNjQzwBTpBo7iyTfq5LSjigfW69wyIc+l7KuFRFmyvqA==', // 실제 API 키로 대체
                pageNo: 1, // 페이지 번호
                numOfRows: 10, // 한 페이지당 항공편 수
                // 필요한 매개변수 추가
                schStTime: 1630,
                schEdTime: 2359,
//                 schLineType: 'I',
                schIOType: 'O',
                schAirCode: 'GMP'
            },
            success: function(response) {
            	console.log(response);
                // 성공적으로 응답을 받았을 때 처리
                var items = $(response).find('item');
                var output = '<ul>';
                items.each(function() {
                    var boardingKor = $(this).find('boardingKor').text();
                    var airlineKorean = $(this).find('airlineKorean').text();
                    var airFln = $(this).find('airFln').text();
                    var arrivedKor = $(this).find('arrivedKor').text();
                    var std = $(this).find('std').text();
                    var rmkEng = $(this).find('rmkEng').text();
                    var io = $(this).find('io').text();
                    var airlineEnglish = $(this).find('airlineEnglish').text();
                    output += '<li>' + io + " : " + airlineKorean + "(" + airlineEnglish + ")" + '의 ' + airFln + '편명이 ' + boardingKor + '에서 ' + arrivedKor + '로 '
                    	+ std + '에 출발할 예정입니다. 현재 ' + rmkEng + ' 상태 입니다.' + '</li>';
                });
                output += '</ul>';
                $('#result').html(output);
            },
            error: function(xhr, status, error) {
                // 오류가 발생했을 때 처리
                console.error('데이터 가져오기 오류:', error);
                $('#result').text('데이터를 가져오는 데 실패했습니다.');
            }
        });
    });
});
</script>
</head>
<body>
	<h1>실시간 항공 운항 정보</h1>
    <button id="fetch-data">항공편 상태 조회</button>
    <div id="result"></div>
    
</body>
</html>