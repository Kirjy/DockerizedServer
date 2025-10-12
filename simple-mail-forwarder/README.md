# Simple Mail Forwarder

A simple mail forwarding service that can forward emails from one address to another.

## Configuration

The service is configured through environment variables:

- `SMTP_HOST`: SMTP server hostname
- `SMTP_PORT`: SMTP server port
- `SMTP_USER`: SMTP username
- `SMTP_PASS`: SMTP password
- `SMTP_FROM`: Sender email address
- `SMTP_TO`: Recipient email address

## Usage

1. Configure the environment variables in your `.env` file
2. Start the service with Docker Compose
3. The service will forward all emails received to the configured recipient

## Security

- Uses TLS for secure email transmission
- Credentials are stored securely in environment variables
- No data is stored permanently

## Maintenance

- Regular updates recommended
- Monitor logs for any issues
- Check email delivery status

## Troubleshooting

- Check the logs for error messages
- Verify SMTP server connectivity
- Ensure all environment variables are set correctly
- Check firewall settings
- Verify DNS records

## Useful Links

- [Docker Hub](https://hub.docker.com/r/zixia/simple-mail-forwarder)
- [GitHub Repository](https://github.com/zixia/simple-mail-forwarder)
- [Documentation](https://github.com/zixia/simple-mail-forwarder/wiki)
- [Tutorial](https://webapplicationconsultant.com/docker/how-to-use-docker-to-forward-emails-sent-to-your-domain-to-your-email-works-for-gmail/)

