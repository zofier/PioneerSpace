$(function() {
  // アップロードするファイルを選択
  $('input[type=file]').change(function() {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $(this).parent().html('');
      return;
    }

    // 画像表示
    var $previewImageTag = $(this).parent()

    var reader = new FileReader();
    reader.onload = function() {
      $previewImageTag.css("background-image" , "url(" + reader.result + ")");
      $previewImageTag.css("background-size" , "contain");
    }

    reader.readAsDataURL(file);
  });

  $(function(){
    $(".image-upload-plus").click(function(){
          $('.image-upload-plus').hide('span').removeClass('image-upload-plus');
        });
  });
});
