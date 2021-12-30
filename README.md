# A example Docker setup to run SimData

* Details at [dev.splunk.com](http://dev.splunk.com/view/simdata/SP-CAAAFGD)

## Requirements

* Make
* Docker
* Other

## Usage

* `make up`
    * Spins up Splunk and the SimData container with the active simulation
* `make down`
    * Tears down Splunk & Simdata
* Splunk Instance available at http://localhost:8000
    * Login `admin` & `changeme`

## Versions

20211229: Updated to Splunk:latest (8.2), SimData 1.2.1, JDK 18. webserver.simulation required and option must be mutually exclusive in Splunk 8.2.  Still has failed attempts to forward to HEC but works.