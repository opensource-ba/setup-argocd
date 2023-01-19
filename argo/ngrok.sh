## Opcional, para expor o ArgoCD à internet.
# Utilize Ingress e Load Balancers com bloqueio de IP num ambiente produtivo.
# Para utilizar, configure o ngrok com `ngrok config add-authtoken <SEU_TOKEN>`
# Mais informações em https://ngrok.com/
ngrok tcp 8080
