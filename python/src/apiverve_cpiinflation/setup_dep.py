from setuptools import setup, find_packages

setup(
    name='apiverve_cpiinflation',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='CPI Inflation provides monthly Consumer Price Index data broken down by category including food, housing, transportation, medical care, and more. Includes year-over-year inflation rates for each category.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/cpiinflation?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
