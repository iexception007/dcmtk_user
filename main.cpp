#include <iostream>
#include <string>
using namespace std;

//DCMTK
#include "dcmtk/config/osconfig.h"
#include "dcmtk/dcmdata/dctk.h"

int main()
{
    DcmFileFormat fileformat;
    OFCondition status = fileformat.loadFile("test.dcm");
    if (status.good())
    {
        DcmDataset* pDataset = fileformat.getDataset();
        OFString patient_name;
        if (pDataset->findAndGetOFString(DCM_PatientName, patient_name).good())
        {
            cout << "Patient's Name:" << patient_name <<endl;
        }
        else
            cout << "Cannot access Patient's Name!" << endl;

    }
    else
        cerr << "Error: cannot read DICOM file (" << status.text() <<")"<<endl;

    return 0;
}
