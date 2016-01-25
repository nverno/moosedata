### connect_afs.R --- 
## Filename: connect_afs.R
## Description: Connect to AFS
## Author: Noah Peart
## Created: Mon Jan 25 14:48:43 2016 (-0500)
## Last-Updated: Mon Jan 25 15:09:18 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'afs'

afsUI <- tagList(
    bsModal('afs', 'Connect to AFS', trigger='afsBtn',
            helpText('Sign in to AFS (requires klog installed locally).')
            textInput('afsName', 'Username:', value=''),
            textInput('afsPasswd', 'Password:', value=''),
            textInput('afsCell', 'Cell:', value='northstar.dartmouth.edu',
                      placeholder = 'northstar.dartmouth.edu'))
)
