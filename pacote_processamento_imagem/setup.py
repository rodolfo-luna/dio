from setuptools import setup, find_packages

with open("README.md", "r") as f:
    page_description = f.read()

with open("requirements.txt") as f:
    requirements = f.read().splitlines()

setup(
    name="image_processing",
    version="0.0.1",
    author="Rodolfo",
    author_email="my_email",
    description="Image processing package using scikit image.",
    long_description=page_description,
    long_description_content_type="text/markdown",
    url="https://github.com/rodolfo-luna/dio_bootcamp_ciencia_de_dados/tree/main/pacote_processamento_imagem"
    packages=find_packages(),
    install_requires=requirements,
    python_requires='>=3.8',
)