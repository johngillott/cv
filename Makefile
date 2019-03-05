build:
	docker build -t latex-image .
	cp build.sh ./friggeri-cv-a4/
	chmod +x ./friggeri-cv-a4/build.sh
	cp johngillottcv.tex ./friggeri-cv-a4/cv.tex
	docker run \
		--rm=true \
		--name latex-container \
		--user="$(id -u):$(id -g)" \
		-i \
		-t \
		-v `pwd`/friggeri-cv-a4:/data \
		latex-image \
		./build.sh
	cp ./friggeri-cv-a4/cv.pdf johngillottcv.pdf
	cp ./friggeri-cv-a4/cv-print.pdf johngillottcv-print.pdf
	(cd friggeri-cv-a4 && git checkout . && git clean -xdf)

clean:
	rm \
		johngillottcv.aux \
		johngillottcv.bcf \
		johngillottcv.log \
		johngillottcv.out \
		johngillottcv-print.log \
		johngillottcv-print.tex \
		johngillottcv.bbl \
		johngillottcv.bcf \
		johngillottcv.run.xml