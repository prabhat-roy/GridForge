FROM python:3.12-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --user --no-warn-script-location -r requirements.txt

FROM python:3.12-slim
WORKDIR /app
RUN groupadd -r app && useradd -r -g app app
COPY --from=builder /root/.local /home/app/.local
COPY . .
RUN chown -R app:app /app
USER app
ENV PATH=/home/app/.local/bin:$PATH
EXPOSE 50042
CMD ["python","main.py"]
