# Bash script for notification in slack!

![](slack_notification.png)

---

Configuration
-------------

### Slack.com web-hook

An incoming web-hook integration must be created within your Slack.com account which can be done at [https://my.slack.com/services/new/incoming-webhook](https://my.slack.com/services/new/incoming-webhook) as shown below:

Given the above screenshot, the incoming Slack.com web-hook URL would be:

	https://hooks.slack.com/services/151ASDSA/POKPOKPO/ASDFCZXCZVA97
	
Make sure that you specify your correct Slack.com incoming web-hook URL and feel free to edit the sender user name at the top of the script:

	# Slack incoming web-hook URL and user name
	url='https://hooks.slack.com/services/QW3R7Y/D34DC0D3/BCADFGabcDEF123'

Test and launch
-------------

Alternatively, you can execute the script manually (as opposed to via Zabbix) from Bash on a terminal:

	$ bash slack.sh '@codica' Problem/Ok 'This is a test of something being wrong!'

Alerting a specific user name results in the message actually coming from the "Slackbot" user using a sort-of "spoofed" user name within the message. A channel alert is sent as you would normally expect from whatever user name you specify in `slack.sh`.

## License
Slack Notification is Copyright © 2015-2020 Codica. It is released under the [MIT License](https://opensource.org/licenses/MIT).

## About Codica

[![Codica logo](https://www.codica.com/assets/images/logo/logo.svg)](https://www.codica.com)

We love open source software! See [our other projects](https://github.com/codica2) or [hire us](https://www.codica.com/) to design, develop, and grow your product.