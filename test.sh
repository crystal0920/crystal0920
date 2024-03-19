git filter-branch -f --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "DevLegend" ];
        then
                GIT_COMMITTER_NAME="crystal0920";
                GIT_AUTHOR_NAME="crystal0920";
                GIT_COMMITTER_EMAIL="coredev2023@gmail.com";
                GIT_AUTHOR_EMAIL="coredev2023@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD