FROM ghcr.io/flaresolverr/flaresolverr:latest

# Render يستخدم منفذ 10000 افتراضياً
ENV PORT=10000
ENV HOST=0.0.0.0
EXPOSE 10000

# إعدادات إضافية لضمان الاستقرار
ENV LOG_LEVEL=info
ENV CAPTCHA_SOLVER=none

CMD ["python3", "-u", "flaresolverr.py"] 
