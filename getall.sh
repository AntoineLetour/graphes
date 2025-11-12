tok=$(cat token.gh)

jq '.artifacts[].id' gh-artifacts.json > liste-id.txt

mkdir -p out/
rm out/*

for a in $(cat liste-id.txt)
do
	echo "requete $a"l
	curl -L \
	-H "Accept: application/vnd.github+json" \
 	-H "Authorization: Bearer $(cat token.gh)" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	--output out/$a \
	https://api.github.com/repos/AntoineLetour/graphes/actions/artifacts/$a/zip 2>/dev/null

		mkdir -p out/$a
		unzip -d out/$a 2>/dev/null
	if [ $? != 0 ]
	then
		echo "le fichier $a n'est pas une archive zip, erreur"
	fi
done


	
