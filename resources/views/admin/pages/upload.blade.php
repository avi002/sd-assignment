<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div>
        <h2>Image Upload</h2>
        @if(Session::has('msg'))
            <div>{{Session::get('msg')}}</div>
        @endif
        <div>
            <form action="{{URL::to('store-image')}}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <label for="image">Image</label>
                <input type="file" multiple name="picture[]" id="picture">
                <br>
                <img style="height: 50px; width: 50px" src="" id="preview" alt="preview">
                <button type="submit">Upload</button>
            </form>
        </div>
        <div>
            @foreach ($image as $img)
                <img src="{{asset('uploads/'.$img->filename)}}" alt="" style="height: 250px; width:400px; padding:3px">   
            @endforeach
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <script>
        $("#picture").change(function() {
            readURL(this);
            });
                    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function(e) {
            $('#preview').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]); // convert to base64 string
        }
        }
    </script>
</body>
</html>