## Docker Instructions

Before proceeding, ensure you have the `catalogue-db` container running and ready. You can set it up from `./docker/catalogue/catalogue-db`.

   just run: 

   ```sh
   bash docker/catalogue/catalogue-db/run-container.sh
   ```

### Steps to Build and Run the Catalogue Service

1. **Build the Catalogue Image**

   Build the Docker image for the catalogue service by running:

   ```sh
   docker build . -t catalogue:latest
   ```

2. **Run catalogue container image**

   Start the Docker container for the catalogue service, mapping port 80 on the host to port 80 on the container, and naming the container catalogue:

   ```sh
   docker run -d -p 80:80 --name catalogue catalogue:latest
   ```

3. **Check whether the service is alive**

   Verify that the service is running by executing the following command:

   ```sh
   docker exec catalogue curl http://localhost:80/health
   ```

4. **Use the service endpoints**

   Access the service endpoints to ensure they are functioning correctly:
   ```sh
   docker exec catalogue curl http://localhost:80/catalogue
   ```