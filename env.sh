export PATH="$PWD/bin:/opt/dream3d/bin:$PATH"

PipelineRunnerPath=$(which PipelineRunner)
echo "PipelineRunnerPath=$PipelineRunnerPath"
Dream3dBinDir=$(dirname "$PipelineRunnerPath")
echo "Dream3dBinDir=$Dream3dBinDir"
Dream3dInstallDir="${Dream3dBinDir%/*}"
echo "Dream3dInstallDir=$Dream3dInstallDir"

cp -rv $Dream3dInstallDir/bin .
ln -sv $Dream3dInstallDir/lib .
ln -sv $Dream3dInstallDir/Plugins .
ln -sv $Dream3dInstallDir/PrebuiltPipelines .
ln -sv $Dream3dInstallDir/share .
