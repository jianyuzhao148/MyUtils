import cgi
import http.server
import os
import socketserver


class RadioHandler(http.server.BaseHTTPRequestHandler):

    def do_POST(self):
        if self.path == "/upload":
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()

            # 表单数据
            form = cgi.FieldStorage(
                fp=self.rfile,
                headers=self.headers,
                environ={'REQUEST_METHOD': 'POST'}
            )

            file_item = form['file']
            filename = form.getvalue('filename', 'default.zip')
            if filename.split(".")[-1] != "zip":
                self.last_audio_name = filename

            upload_dir = 'uploads'
            if not os.path.exists(upload_dir):
                os.makedirs(upload_dir)

            file_path = os.path.join(upload_dir, filename)

            with open(file_path, 'wb') as f:
                f.write(file_item.file.read())

            response = f'File uploaded successfully: {filename}'
            self.wfile.write(response.encode())

    def do_GET(self):
        if self.path == '/audio':
            self.send_response(200)
            self.send_header('Content-type', 'audio/mpeg')
            self.end_headers()

            with open(self.last_audio_name, 'rb') as f:
                while True:
                    chunk = f.read(1024)
                    if not chunk:
                        break
                    self.wfile.write(chunk)
        else:
            self.send_response(404)
            self.send_header('Content-type', 'text/plain')
            self.end_headers()
            self.wfile.write(b'Not found')


def main():
    PORT = 8000
    Handler = RadioHandler
    with socketserver.TCPServer(("192.168.2.101", PORT), Handler) as httpd:
        print("Serving at port", PORT)
        httpd.serve_forever()


if __name__ == '__main__':
    main()
