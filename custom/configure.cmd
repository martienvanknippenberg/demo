@SET PATH=%PATH%;C:\Program Files\MSBuild\12.0\Bin;C:\Program Files (x86)\MSBuild\12.0\Bin;C:\Windows\Microsoft.NET\Framework\v4.0.30319

@msbuild custom.sln /target:Clean /verbosity:minimal

@msbuild custom.sln /target:Merge:Rebuild /p:Configuration="Debug" /verbosity:minimal
@msbuild Resources/Merge.proj /verbosity:minimal

@msbuild custom.sln /target:Meta:Rebuild /p:Configuration="Debug" /verbosity:minimal

@msbuild Domain/Generate.proj /verbosity:minimal

@msbuild Diagrams/Generate.proj /verbosity:minimal

@pause
