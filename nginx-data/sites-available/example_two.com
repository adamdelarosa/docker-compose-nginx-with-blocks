server {
        listen   8080; ## listen for ipv4; this line is default and implied
        #listen   [::]:8080 default ipv6only=on; ## listen for ipv6

        root /var/www/example_two.com/public_html;
        index index.html index.htm;

        # Make site accessible from http://localhost/
        server_name example_two.com;
}
