% -*- tab-width: 2 -*-
-include_lib("amqp_client/include/amqp_client.hrl").

-record(header, {name, 
								 value}).
-record(webhook, {exchange=#'exchange.declare'{}, 
									queue=#'queue.declare'{},
									routing_key, 
									url, 
									authorization, 
									method, 
									headers=[],
									max_send=infinity,
									send_if=always}).
