<!DOCTYPE html>
<html>
<head>
    <title>Sale Weighbridge</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container mt-4">
        <h3 class="text-center mb-4">Sale Weighbridge (MLK)</h3>

        <!-- Header Inputs -->
        <div class="row g-3">
            <div class="col-md-3">
                <label for="weighbridge" class="form-label">Weighbridge*</label>
                <select id="weighbridge" class="form-select">
                    <option selected>Select</option>
                </select>
            </div>
            <div class="col-md-3">
                <label for="weighType" class="form-label">Weigh Type*</label>
                <input type="text" id="weighType" class="form-control">
            </div>
            <div class="col-md-3">
                <label for="weighSlipNo" class="form-label">Weigh Slip No</label>
                <input type="text" id="weighSlipNo" class="form-control">
            </div>
            <div class="col-md-3">
                <label for="vehicleInDate" class="form-label">Vehicle In Date</label>
                <input type="date" id="vehicleInDate" class="form-control">
            </div>
        </div>

        <div class="row g-3 mt-2">
            <div class="col-md-3">
                <label for="vehicleInTime" class="form-label">Vehicle In Time</label>
                <input type="time" id="vehicleInTime" class="form-control">
            </div>
            <div class="col-md-3">
                <label for="vehicleOutDate" class="form-label">Vehicle Out Date</label>
                <input type="date" id="vehicleOutDate" class="form-control">
            </div>
            <div class="col-md-3">
                <label for="vehicleOutTime" class="form-label">Vehicle Out Time</label>
                <input type="time" id="vehicleOutTime" class="form-control">
            </div>
            <div class="col-md-3 text-center">
                <h1 class="display-6 text-danger">100.000</h1>
                <button class="btn btn-primary w-100">Get Weight</button>
            </div>
        </div>

        <!-- Delivery Details -->
        <div class="mt-4">
            <h5>Delivery Details</h5>
            <div class="row g-3">
                <div class="col-md-3">
                    <label for="deliveryChallanNo" class="form-label">Delivery Challan No</label>
                    <input type="text" id="deliveryChallanNo" class="form-control">
                </div>
                <div class="col-md-3">
                    <label for="challanDate" class="form-label">Challan Date</label>
                    <input type="date" id="challanDate" class="form-control">
                </div>
                <div class="col-md-3">
                    <label for="doQty" class="form-label">DO Qty</label>
                    <input type="text" id="doQty" class="form-control">
                </div>
                <div class="col-md-3">
                    <label for="vehicleNo" class="form-label">Vehicle No.</label>
                    <input type="text" id="vehicleNo" class="form-control">
                </div>
            </div>
        </div>

        <!-- Transporter and Remarks -->
        <div class="row g-3 mt-2">
            <div class="col-md-4">
                <label for="transporter" class="form-label">Transporter</label>
                <input type="text" id="transporter" class="form-control">
            </div>
            <div class="col-md-4">
                <label for="fromPlace" class="form-label">From Place</label>
                <input type="text" id="fromPlace" class="form-control">
            </div>
            <div class="col-md-4">
                <label for="toPlace" class="form-label">To Place</label>
                <input type="text" id="toPlace" class="form-control">
            </div>
        </div>

        <!-- Items Table -->
        <div class="mt-4">
            <h5>Item Details</h5>
            <table class="table table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Sr. No</th>
                        <th>Item Name</th>
                        <th>UOM</th>
                        <th>First WT</th>
                        <th>Second WT</th>
                        <th>Net WT</th>
                        <th>No of Bags</th>
                        <th>Calc WT (MT)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                        <td><input type="text" class="form-control"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Buttons -->
        <div class="d-flex justify-content-between mt-4">
            <button class="btn btn-success">Save</button>
            <button class="btn btn-danger">Delete</button>
            <button class="btn btn-primary">Print PDF</button>
            <button class="btn btn-warning">Generate Invoice</button>
        </div>
    </div>
</body>
</html>