FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html impresion-3d.html agencia-ia.html admin.html /usr/share/nginx/html/
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD wget --spider -q http://127.0.0.1:3000/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
