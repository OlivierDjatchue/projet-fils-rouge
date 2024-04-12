FROM python:3.6-alpine
WORKDIR /opt/
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
ENTRYPOINT ["python", "app.py"]
