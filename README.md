# BATCH_CREATE_TEST: Cách tạo một bộ test chuẩn

## Hướng dẫn căn bản

Do cái file Batch kia giải thích kas là dài dòng nên mình quyết định nói một số điều cần chú ý sau đây:

- Folder dấn đến đường tạo bộ test chuẩn của bạn cần được chỉnh sửa trong `create.bat`. Ví dụ của mình, folder dùng để sinh bộ test chuẩn là `D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test` , thì mình chỉnh sửa trong file `create.bat` cho phù hợp như vậy

- Vẫn phải lưu ý là file gen.cpp TUYỆT ĐỐI không được có if(fopen) hoặc freopen

- Khi chạy trình sinh test, chỉ cần click đúp chuột vào file `create.bat` là xong

- Kết quả bạn có được sẽ là một bộ test nằm trong folder `Task`
