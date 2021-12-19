$hashtable1 = @{
    roles = @("abc", "abewec", "123")
}

$hashtable2 = @{
    roles = @("def", "456")
}

$array1 = @(
    "123", "456"
)

$array2 = @(
    "789", "abc"
)

$json1 = @'
{
    roles: 
        [
            {
                name: "abc"
            },
            {
                name: "123"
            }
        ]
    
}
'@

$json2 = @'
{
    roles: 
        [
            {
                name: "cvzx"
            },
            {
                name: "45654"
            }
        ]
    
}
'@

$taskForm = @'
{
    "id": "FRM-2655de08-27dd-11ec-a61f-000c29aeab86",
    "name": "Access request form",
    "key": "accessRequestForm",
    "version": 22,
    "metadata": {
        "key": "accessRequestForm",
        "name": "Access request form",
        "description": "",
        "version": "9",
        "type": "2",
        "flowableDesignVersion": 3100
    },
    "rows": [
        {
            "cols": [
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 15,
                                "y": 25
                            },
                            "lowerRight": {
                                "x": 574,
                                "y": 73
                            }
                        },
                        "stencilSuperIds": [
                            "base-single-select",
                            "Component"
                        ],
                        "stencilId": "user-auto-complete",
                        "customStencilId": null
                    },
                    "extraSettings": {
                        "tagsEnabled": false,
                        "preselectAll": false,
                        "clientSideFiltering": false,
                        "enableAutocomplete": true,
                        "autocompleteMinLength": 1,
                        "dataSource": "Rest",
                        "masterDataIncludeTranslations": false,
                        "queryUrl": "{{endpoints.idm}}/users?displayNameLikeIgnoreCase=%25{{$searchText}}%25",
                        "lookupUrl": "{{endpoints.idm}}/users/{{$id}}",
                        "path": "data",
                        "linkTargetView": "browse",
                        "formatItem": "{{$item.displayName}}",
                        "storage": "Id",
                        "identity": "id",
                        "linkTarget": "_blank",
                        "multi": false
                    },
                    "enabled": true,
                    "labelAlign": "top",
                    "value": "{{requesterName}}",
                    "size": 7,
                    "ignore": false,
                    "visible": true,
                    "isRequired": true,
                    "label": "Requestor",
                    "i18n": {
                        "en_us": {
                            "label": "Requestor"
                        }
                    },
                    "id": "user-auto-complete1",
                    "type": "select"
                },
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 589,
                                "y": 25
                            },
                            "lowerRight": {
                                "x": 984,
                                "y": 73
                            }
                        },
                        "stencilSuperIds": [
                            "base-single-select",
                            "Component"
                        ],
                        "stencilId": "cloud-single-select",
                        "customStencilId": null
                    },
                    "extraSettings": {
                        "tagsEnabled": false,
                        "preselectAll": false,
                        "clientSideFiltering": false,
                        "enableAutocomplete": false,
                        "autocompleteMinLength": 1,
                        "dataSource": "Static",
                        "items": [
                            {
                                "text": "Normal",
                                "value": "0"
                            },
                            {
                                "text": "Privileged",
                                "value": "1"
                            }
                        ],
                        "masterDataIncludeTranslations": false,
                        "linkTargetView": "browse",
                        "storage": "Id",
                        "identity": "value",
                        "linkTarget": "_blank",
                        "multi": false
                    },
                    "enabled": true,
                    "i18n": {
                        "en_us": {
                            "extraSettings": {
                                "items": [
                                    {
                                        "text": "Normal",
                                        "value": "0"
                                    },
                                    {
                                        "text": "Privileged",
                                        "value": "1"
                                    }
                                ]
                            },
                            "label": "Select access"
                        }
                    },
                    "labelAlign": "top",
                    "value": "{{accessLevel}}",
                    "size": 5,
                    "ignore": false,
                    "visible": true,
                    "isRequired": true,
                    "label": "Select access",
                    "id": "single-select1",
                    "type": "select"
                }
            ]
        },
        {
            "cols": [
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 0,
                                "y": 0
                            },
                            "lowerRight": {
                                "x": 0,
                                "y": 0
                            }
                        },
                        "stencilSuperIds": [],
                        "stencilId": null,
                        "customStencilId": null
                    },
                    "size": 10,
                    "type": ""
                },
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 835,
                                "y": 98
                            },
                            "lowerRight": {
                                "x": 984,
                                "y": 124
                            }
                        },
                        "stencilSuperIds": [
                            "Button"
                        ],
                        "stencilId": "cloud-link-button",
                        "customStencilId": null
                    },
                    "extraSettings": {
                        "target": "_self",
                        "alignment": "left",
                        "iconAlignment": "right",
                        "showAsButton": true,
                        "type": "one"
                    },
                    "primary": false,
                    "labelAlign": "top",
                    "value": "Click me",
                    "size": 2,
                    "ignore": false,
                    "visible": true,
                    "enabled": true,
                    "isRequired": false,
                    "id": "link-button1",
                    "i18n": {
                        "en_us": {
                            "value": "Click me"
                        }
                    },
                    "type": "linkButton"
                }
            ]
        },
        {
            "cols": [
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 15,
                                "y": 147
                            },
                            "lowerRight": {
                                "x": 984,
                                "y": 197
                            }
                        },
                        "stencilSuperIds": [
                            "base-alert",
                            "Component"
                        ],
                        "stencilId": "cloud-alert",
                        "customStencilId": null
                    },
                    "labelAlign": "top",
                    "value": "{{nameExcl}}",
                    "size": 12,
                    "ignore": false,
                    "visible": "{{nameExcl}}",
                    "enabled": true,
                    "isRequired": false,
                    "id": "alert1",
                    "extraSettings": {
                        "title": "Requester name with exclamation mark!",
                        "severity": "info",
                        "defaultIcon": true,
                        "closeIcon": true,
                        "closeButton": false
                    },
                    "i18n": {
                        "en_us": {
                            "extraSettings": {
                                "title": "Requester name with exclamation mark!"
                            },
                            "value": "{{nameExcl}}"
                        }
                    },
                    "type": "alert"
                }
            ]
        },
        {
            "cols": [
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 15,
                                "y": 220
                            },
                            "lowerRight": {
                                "x": 984,
                                "y": 246
                            }
                        },
                        "stencilSuperIds": [
                            "Button"
                        ],
                        "stencilId": "cloud-script-button",
                        "customStencilId": null
                    },
                    "extraSettings": {
                        "text": "Expression button",
                        "script": "{{requesterName + \"!\" + initVars.gtabs[0]}}",
                        "autoExecute": "{{requesterName}}",
                        "executeAlways": false,
                        "alignment": "left",
                        "iconAlignment": "right"
                    },
                    "i18n": {
                        "en_us": {
                            "extraSettings": {
                                "text": "Expression button"
                            }
                        }
                    },
                    "primary": false,
                    "labelAlign": "top",
                    "value": "{{nameExcl}}",
                    "size": 12,
                    "ignore": false,
                    "visible": true,
                    "enabled": true,
                    "isRequired": false,
                    "id": "script-button1",
                    "type": "scriptButton"
                }
            ]
        },
        {
            "cols": [
                {
                    "designInfo": {
                        "bounds": {
                            "upperLeft": {
                                "x": 15,
                                "y": 269
                            },
                            "lowerRight": {
                                "x": 984,
                                "y": 337
                            }
                        },
                        "stencilSuperIds": [
                            "SubForm"
                        ],
                        "stencilId": "cloud-sub-form",
                        "customStencilId": null
                    },
                    "labelAlign": "top",
                    "size": 12,
                    "ignore": false,
                    "visible": true,
                    "enabled": true,
                    "isRequired": false,
                    "label": "Label",
                    "i18n": {
                        "en_us": {
                            "label": "Label"
                        }
                    },
                    "extraSettings": {
                        "showBorder": false,
                        "collapsible": false,
                        "collapsed": false,
                        "formRef": "tabsAndPanels",
                        "multipleEntries": false,
                        "showAddButton": true,
                        "showDeleteButton": true,
                        "showNoItemsMessage": true,
                        "layoutDefinition": {
                            "rows": [
                                {
                                    "cols": [
                                        {
                                            "designInfo": {
                                                "bounds": {
                                                    "upperLeft": {
                                                        "x": 15,
                                                        "y": 25
                                                    },
                                                    "lowerRight": {
                                                        "x": 984,
                                                        "y": 173
                                                    }
                                                },
                                                "stencilSuperIds": [
                                                    "Tabs"
                                                ],
                                                "stencilId": "cloud-tabs",
                                                "customStencilId": null
                                            },
                                            "labelAlign": "top",
                                            "size": 12,
                                            "ignore": false,
                                            "visible": true,
                                            "enabled": true,
                                            "isRequired": false,
                                            "id": "tabs1",
                                            "extraSettings": {
                                                "tabsorder": [
                                                    "tab-panel1",
                                                    "tab-panel2"
                                                ],
                                                "showBorder": false,
                                                "sections": [
                                                    {
                                                        "designInfo": {
                                                            "bounds": {
                                                                "upperLeft": {
                                                                    "x": 25,
                                                                    "y": 25
                                                                },
                                                                "lowerRight": {
                                                                    "x": 944,
                                                                    "y": 143
                                                                }
                                                            },
                                                            "stencilSuperIds": [
                                                                "SubSlotPanel"
                                                            ],
                                                            "stencilId": "cloud-tab-panel",
                                                            "customStencilId": null
                                                        },
                                                        "label": "{{gtab}}",
                                                        "i18n": {
                                                            "en_us": {
                                                                "label": "{{gtab}}"
                                                            }
                                                        },
                                                        "labelAlign": "top",
                                                        "size": 12,
                                                        "ignore": false,
                                                        "visible": true,
                                                        "enabled": true,
                                                        "isRequired": false,
                                                        "id": "tab-panel1",
                                                        "extraSettings": {
                                                            "serverValidationMethod": "GET",
                                                            "layoutDefinition": {
                                                                "rows": [
                                                                    {
                                                                        "cols": [
                                                                            {
                                                                                "designInfo": {
                                                                                    "bounds": {
                                                                                        "upperLeft": {
                                                                                            "x": 15,
                                                                                            "y": 25
                                                                                        },
                                                                                        "lowerRight": {
                                                                                            "x": 905,
                                                                                            "y": 93
                                                                                        }
                                                                                    },
                                                                                    "stencilSuperIds": [
                                                                                        "SubForm"
                                                                                    ],
                                                                                    "stencilId": "cloud-sub-form",
                                                                                    "customStencilId": null
                                                                                },
                                                                                "labelAlign": "top",
                                                                                "value": "{{nestedForm1}}",
                                                                                "size": 12,
                                                                                "ignore": false,
                                                                                "visible": true,
                                                                                "enabled": true,
                                                                                "isRequired": false,
                                                                                "label": "Nested form 1",
                                                                                "i18n": {
                                                                                    "en_us": {
                                                                                        "label": "Nested form 1"
                                                                                    }
                                                                                },
                                                                                "extraSettings": {
                                                                                    "showBorder": false,
                                                                                    "collapsible": false,
                                                                                    "collapsed": false,
                                                                                    "formRef": "nestedForm01",
                                                                                    "multipleEntries": false,
                                                                                    "showAddButton": true,
                                                                                    "showDeleteButton": true,
                                                                                    "showNoItemsMessage": true,
                                                                                    "layoutDefinition": {
                                                                                        "rows": [
                                                                                            {
                                                                                                "cols": [
                                                                                                    {
                                                                                                        "designInfo": {
                                                                                                            "bounds": {
                                                                                                                "upperLeft": {
                                                                                                                    "x": 15,
                                                                                                                    "y": 25
                                                                                                                },
                                                                                                                "lowerRight": {
                                                                                                                    "x": 984,
                                                                                                                    "y": 73
                                                                                                                }
                                                                                                            },
                                                                                                            "stencilSuperIds": [
                                                                                                                "base-text",
                                                                                                                "Component"
                                                                                                            ],
                                                                                                            "stencilId": "cloud-text",
                                                                                                            "customStencilId": null
                                                                                                        },
                                                                                                        "labelAlign": "top",
                                                                                                        "value": "{{text}}",
                                                                                                        "size": 12,
                                                                                                        "ignore": false,
                                                                                                        "visible": true,
                                                                                                        "enabled": true,
                                                                                                        "isRequired": true,
                                                                                                        "label": "Text",
                                                                                                        "i18n": {
                                                                                                            "en_us": {
                                                                                                                "label": "Text"
                                                                                                            }
                                                                                                        },
                                                                                                        "id": "text1",
                                                                                                        "type": "text",
                                                                                                        "extraSettings": {}
                                                                                                    }
                                                                                                ]
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                },
                                                                                "id": "sub-form1",
                                                                                "type": "subform"
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        },
                                                        "type": "panel"
                                                    },
                                                    {
                                                        "designInfo": {
                                                            "bounds": {
                                                                "upperLeft": {
                                                                    "x": 25,
                                                                    "y": 25
                                                                },
                                                                "lowerRight": {
                                                                    "x": 944,
                                                                    "y": 123
                                                                }
                                                            },
                                                            "stencilSuperIds": [
                                                                "SubSlotPanel"
                                                            ],
                                                            "stencilId": "cloud-tab-panel",
                                                            "customStencilId": null
                                                        },
                                                        "label": "New Tab",
                                                        "labelAlign": "top",
                                                        "size": 12,
                                                        "ignore": false,
                                                        "visible": true,
                                                        "enabled": true,
                                                        "isRequired": false,
                                                        "id": "tab-panel2",
                                                        "extraSettings": {
                                                            "serverValidationMethod": "GET",
                                                            "layoutDefinition": {
                                                                "rows": [
                                                                    {
                                                                        "cols": [
                                                                            {
                                                                                "designInfo": {
                                                                                    "bounds": {
                                                                                        "upperLeft": {
                                                                                            "x": 15,
                                                                                            "y": 25
                                                                                        },
                                                                                        "lowerRight": {
                                                                                            "x": 905,
                                                                                            "y": 73
                                                                                        }
                                                                                    },
                                                                                    "stencilSuperIds": [
                                                                                        "base-date",
                                                                                        "Component"
                                                                                    ],
                                                                                    "stencilId": "cloud-date",
                                                                                    "customStencilId": null
                                                                                },
                                                                                "labelAlign": "top",
                                                                                "value": "{{date}}",
                                                                                "size": 12,
                                                                                "ignore": false,
                                                                                "visible": true,
                                                                                "enabled": true,
                                                                                "isRequired": true,
                                                                                "label": "Date",
                                                                                "i18n": {
                                                                                    "en_us": {
                                                                                        "label": "Date"
                                                                                    }
                                                                                },
                                                                                "id": "date1",
                                                                                "extraSettings": {
                                                                                    "enableTime": false,
                                                                                    "storeWithoutTime": true,
                                                                                    "timeInterval": 15
                                                                                },
                                                                                "type": "date"
                                                                            }
                                                                        ]
                                                                    }
                                                                ]
                                                            }
                                                        },
                                                        "type": "panel"
                                                    }
                                                ],
                                                "activetab": "tab-panel1"
                                            },
                                            "type": "tabs"
                                        }
                                    ]
                                }
                            ]
                        }
                    },
                    "id": "sub-form1",
                    "type": "subform"
                }
            ]
        }
    ]
}
'@

# $json1 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -GroupBy roles
# $json2 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -GroupBy roles

# $hashtable1 | Format-Table -GroupBy roles -Property value | select $_[0]
    
# $hashtable2 | Format-Table -GroupBy roles -Property value

# $json1 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -RepeatHeader
# $json2 | ConvertFrom-Json | Select -ExpandProperty roles | Format-Table -RepeatHeader

# /platform-api/tasks/TSK-9692fa60-27d3-11ec-a61f-000c29aeab86/form
$output = @()
function FindRequired {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $True)]
        [PSCustomObject]$object
    )

    # $object | ForEach-Object {
        
    #     # If ($_.rows) {
    #     #     $_ | select -ExpandProperty rows | select -ExpandProperty cols | where { $null -ne $_.label -and $_.isRequired -eq $true } | Format-Table label, isRequired, type
    #     #     $_.rows.cols | FindRequired

    #     # }

    #     # ElseIf ($_.PSObject.Properties.TypeNameOfValue -eq "System.Management.Automation.PSCustomObject") {
    #     #     $_ | select -ExpandProperty $_.PSObject.Properties.name | FindRequired
    #     #     # $_.PSObject.Properties
    #     # }

    #     # $_.GetType()
    #     $a = $_ | Get-Member -MemberType NoteProperty
    #     If ($a -is [Object[]]) {
    #         $a | FindRequired
    #     }

    #     If ($_.rows) {
    #         $_.rows.cols
    #     }

    # }


    
    # $object.PSObject.Properties | ForEach-Object {
        
    #     If ($_.TypeNameOfValue -eq "System.Management.Automation.PSCustomObject") {
    #         $global:a = $_.Value
    #         $_.Value | FindRequired
    #     }
    #     ElseIf ($_.TypeNameOfValue -eq "System.Object[]") {

    #         $global:a = $_.Value
    #         $_.Value | ForEach-Object {
    #             $_ | FindRequired
    #             }
    #     } ElseIf ($_.Name -eq "isRequired") {
    #         $_.Value
    #         $a
    #     }
    # }

    # $object | ForEach-Object {
    #     If ($_.PSObject.Properties.TypeNameOfValue -eq "System.Management.Automation.PSCustomObject") {
    #         $_ | FindRequired
    #     }
    #     ElseIf ($_.PSObject.Properties.TypeNameOfValue -eq "System.Object[]") {
    #         $_ | ForEach-Object { $_ | FindRequired }
    #     } ElseIf ($_.PSObject.Properties.Name -eq "isRequired") {
    #         $_.label
    #     }
    # }


    #   ElseIf {
    #     $object | select -ExpandProperty rows | select -ExpandProperty cols | ForEach-Object {

    #         If ($_.type -eq "subform") {
    #             FindRequired $_.extraSettings.layoutDefinition
    #         }
    #         ElseIf ($_.type -as [PSCustomObject]) {
    #             FindRequired $_
    #         }
    #         Else {
    #             $_ | where { $null -ne $_.label -and $_.isRequired -eq $true } | Format-Table label, isRequired, type

    #         }
    
    # }

    
    $object | ForEach-Object {
        
        If ($_.rows) {
            $expandedCols = $_ | select -ExpandProperty rows | select -ExpandProperty cols
            # $expandedCols | where { $null -ne $_.label -and $_.isRequired -eq $true } | Format-Table label, isRequired, type, id
            $expandedCols | where { $null -ne $_.label -and $_.isRequired -eq $true } | ForEach-Object {
                $obj = New-Object PSObject -Property @{Label = $_.label; Required = $_.isRequired; Type = $_.type; ID = $_.id }
                $script:output += $obj
            }
            $expandedCols | FindRequired
    
        }
        elseif ($_.extraSettings -and $_.extraSettings.layoutDefinition) {
            $_ | select -ExpandProperty extraSettings | select -ExpandProperty layoutDefinition | FindRequired
        }
        elseif ($_.extraSettings -and $_.extraSettings.sections) {
            $_ | select -ExpandProperty extraSettings | select -ExpandProperty sections | ForEach-Object { $_ | FindRequired }
        } 
    }

}
    
$taskForm | ConvertFrom-Json | FindRequired
$output | Format-Table Label, Required, Type, ID
# ($taskForm | ConvertFrom-Json).PSObject.Properties | ForEach-Object {

#     If ($_.TypeNameOfValue -eq "System.Object[]") {
#         $_.Value.PSObject.Properties 
#     }
# }

# $taskForm | ConvertFrom-Json | select -ExpandProperty rows | select -ExpandProperty cols | where { $null -ne $_.label -and $_.isRequired -eq $true } | Format-Table label, isRequired, type


