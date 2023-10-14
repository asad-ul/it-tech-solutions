FROM public.ecr.aws/lambda/python:3.9.2023.09.12.12

# Copy requirements.txt
# COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Copy function code
# COPY my_lambda_1.py ${LAMBDA_TASK_ROOT}
# COPY my_lambda_2.py ${LAMBDA_TASK_ROOT}

# OR
COPY . .

# Install the specified packages
RUN pip install -r requirements.txt

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
# CMD [ "my_lambda_1.handler" ]