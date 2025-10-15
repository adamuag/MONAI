FROM projectmonai/monai:latest

RUN python -m pip install --no-cache-dir monailabel

RUN if [ -f /usr/local/lib/python3.10/dist-packages/pydicom_seg/segmentation_dataset.py ]; then \
    sed -i "s/from pydicom._storage_sopclass_uids import SegmentationStorage/from pydicom.uid import SegmentationStorage/g" /usr/local/lib/python3.10/dist-packages/pydicom_seg/segmentation_dataset.py; \
    fi && \
    if [ -f /usr/local/lib/python3.10/dist-packages/pydicom_seg/reader.py ]; then \
    sed -i "s/from pydicom._storage_sopclass_uids import SegmentationStorage/from pydicom.uid import SegmentationStorage/g" /usr/local/lib/python3.10/dist-packages/pydicom_seg/reader.py; \
    fi
RUN monailabel apps --download --name radiology --output apps
RUN monailabel datasets --download --name Task09_Spleen --output datasets

CMD ["/bin/bash"]
