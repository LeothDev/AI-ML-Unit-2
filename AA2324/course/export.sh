NAME="$1"
OUT="$2"
mkdir -p release_web
## notebook
jupyter nbconvert --to notebook  --allow-chromium-download  $NAME \
	--output $OUT --output-dir release_web
##webpdf
#jupyter nbconvert --to webpdf   $NAME \
#	--output $OUT --output-dir release_web
# let you fix the latex if pdf does not compile
#jupyter nbconvert --to webpdf --ExecutePreprocessor.timeout None  --allow-chromium-download  $NAME \
#	--output $OUT --output-dir release_web
##slides
# jupyter nbconvert --to slides  --allow-chromium-download  $NAME \
#  	--output $OUT --output-dir release_web
# ## python
# jupyter nbconvert --to python  --allow-chromium-download  $NAME \
# 	--output $OUT --output-dir release_web
# ## html
jupyter nbconvert --to html  --allow-chromium-download  $NAME \
 	--output $OUT --output-dir release_web
# Copy the images now...
#cp -r figs/ release_web/figs/

