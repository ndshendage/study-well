.mini-container.two-col-form
  .full-width
    .col-md-6.frm-control
      
.full-width
  .col-md-6.frm-control{:style => "padding-top: 20px;"}
btn-success

.mini-container.two-col-form
  = simple_form_for([:system_managements, @audit_center_priority], html: {class: 'form-horizontal form-validate' }) do |f|
    = f.error_notification
    .full-width
      .col-md-6.frm-control
        = f.input :priority, label: t(".priority")
    .full-width
      .col-md-6.frm-control
        = f.input :score_slab_start_value, label: t(".slab_start_value")
    .full-width
      .col-md-6.frm-control  
        = f.input :score_slab_end_value, label: t(".slab_end_value")
    .full-width
      .col-md-6.frm-control{:style => "padding-top: 20px;"}
        - if btn_name == 'Show'
          = link_to t("common.back"), :back, class: 'btn btn-success'
        - else
          = f.button :submit, btn_name, class: 'btn btn-success'
          = link_to t("common.cancel"), system_managements_audit_center_priorities_path, class: 'btn btn-default'
            
