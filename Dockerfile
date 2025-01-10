# 使用 Python 3.9 作为基础镜像
FROM python:3.9-alpine

# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 文件到容器中
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码到容器中
COPY . .

# 设置环境变量
ENV PYTHONUNBUFFERED=1

# 运行主程序
CMD ["python", "sample.py"]
