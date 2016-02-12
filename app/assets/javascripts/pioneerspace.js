$(function() {
  // アップロードするファイルを選択
  $('input[type=file]').change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('div.user-image').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      $('div.user-image').css("background-image" , "url(" + reader.result + ")" );
    }
    reader.readAsDataURL(file);
  });
});
