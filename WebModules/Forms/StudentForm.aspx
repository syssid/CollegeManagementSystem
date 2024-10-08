﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Layout.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="CollegeManagementSystem.WebModules.Forms.StudentForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/StudentForm.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Page Title</h1>
        </div>
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    For Office Use
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Date of Receipt</label>
                                    <div class="col-sm-5">
                                        <input type="date" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Course Admitted to</label>
                                    <div class="col-sm-5">
                                        <select class="form-control">
                                            <option>11th</option>
                                            <option>12th</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Accomodation</label>
                                    <div class="col-sm-5">
                                        <label class="checkbox-inline">
                                            <input type="checkbox">Hostel
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">Day Scholar
                                        </label>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Personal Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Name of Applicant</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Father's Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Mother's Name</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">DOB</label>
                                    <div class="col-sm-3">
                                        <input type="date" class="form-control">
                                    </div>
                                    <label class="col-sm-2 col-form-label">Gender</label>
                                    <div class="col-sm-3">
                                        <label class="checkbox-inline">
                                            <input type="checkbox">Male
                                   
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">Female
                                   
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Category</label>
                                    <div class="col-sm-5">
                                        <label class="checkbox-inline">
                                            <input type="checkbox">OBC                                   
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">GEN                                   
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">SC                                   
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">ST                                   
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox">PH                                   
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Nationality</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control">
                                    </div>
                                    <label class="col-sm-2 col-form-label">Aadhar No.</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Religion</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control">
                                    </div>
                                    <label class="col-sm-2 col-form-label">Blood Group</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Contact Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Permanent Address</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Present Address</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Father's Mob No.</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Mother's Mob No.</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Father/Mothers 's Email ID</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Personal Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Text Input</label>
                                    <input class="form-control">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                                <div class="form-group">
                                    <label>Text Input with Placeholder</label>
                                    <input class="form-control" placeholder="Enter text">
                                </div>
                                <div class="form-group">
                                    <label>Static Control</label>
                                    <p class="form-control-static">email@example.com</p>
                                </div>
                                <div class="form-group">
                                    <label>File input</label>
                                    <input type="file">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Checkboxes</label>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="">Checkbox 1
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="">Checkbox 2
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="">Checkbox 3
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Inline Checkboxes</label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">1
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">2
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox">3
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label>Radio Buttons</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Radio 1
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio 2
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio 3
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Inline Radio Buttons</label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>1
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">2
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">3
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label>Selects</label>
                                    <select class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Multiple Selects</label>
                                    <select multiple class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-default">Submit Button</button>
                                <button type="reset" class="btn btn-default">Reset Button</button>
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                        <div class="col-lg-6">
                            <h1>Disabled Form States</h1>
                                <fieldset disabled>
                                    <div class="form-group">
                                        <label for="disabledSelect">Disabled input</label>
                                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                    </div>
                                    <div class="form-group">
                                        <label for="disabledSelect">Disabled select menu</label>
                                        <select id="disabledSelect" class="form-control">
                                            <option>Disabled select</option>
                                        </select>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Disabled Checkbox
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Disabled Button</button>
                                </fieldset>
                            <h1>Form Validation States</h1>
                                <div class="form-group has-success">
                                    <label class="control-label" for="inputSuccess">Input with success</label>
                                    <input type="text" class="form-control" id="inputSuccess">
                                </div>
                                <div class="form-group has-warning">
                                    <label class="control-label" for="inputWarning">Input with warning</label>
                                    <input type="text" class="form-control" id="inputWarning">
                                </div>
                                <div class="form-group has-error">
                                    <label class="control-label" for="inputError">Input with error</label>
                                    <input type="text" class="form-control" id="inputError">
                                </div>
                            <h1>Input Groups</h1>
                                <div class="form-group input-group">
                                    <span class="input-group-addon">@</span>
                                    <input type="text" class="form-control" placeholder="Username">
                                </div>
                                <div class="form-group input-group">
                                    <input type="text" class="form-control">
                                    <span class="input-group-addon">.00</span>
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-eur"></i>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Font Awesome Icon">
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon">$</span>
                                    <input type="text" class="form-control">
                                    <span class="input-group-addon">.00</span>
                                </div>
                                <div class="form-group input-group">
                                    <input type="text" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
</asp:Content>
