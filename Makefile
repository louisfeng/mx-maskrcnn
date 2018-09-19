all:
	cd rcnn/cython/; python setup.py build_ext --inplace; cd ../../
	cd rcnn/pycocotools; python setup.py build_ext --inplace; cd ../../
clean:
	cd rcnn/cython/; rm *.so *.c *.cpp; cd ../../
