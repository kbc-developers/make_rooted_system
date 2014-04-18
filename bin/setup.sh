# Copyright 2011-2014 sakuramilk ma34s homuhomu rara7886
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
# -------------------------------------------------------
#!/bin/bash

#for ubuntu
if [ -z `cat /etc/issue | grep Ubuntu` ]

	if [ -z `dpkg -l | grep zlib1g-dev` ]
		 apt-get install zlib1g-dev
	fi

	if [ -z `dpkg -l | grep p7zip-full` ]
		 apt-get install p7zip-full
	fi
	if [ -z `java -version` ]
		 apt-get install openjdk-6-jre
	fi
	exit 0
fi
