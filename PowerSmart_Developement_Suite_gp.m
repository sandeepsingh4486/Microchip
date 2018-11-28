function varargout = PowerSmart_Developement_Suite_gp(varargin)
% POWERSMART_DEVELOPEMENT_SUITE_GP MATLAB code for PowerSmart_Developement_Suite_gp.fig
%      POWERSMART_DEVELOPEMENT_SUITE_GP, by itself, creates a new POWERSMART_DEVELOPEMENT_SUITE_GP or raises the existing
%      singleton*.
%
%      H = POWERSMART_DEVELOPEMENT_SUITE_GP returns the handle to a new POWERSMART_DEVELOPEMENT_SUITE_GP or the handle to
%      the existing singleton*.
%
%      POWERSMART_DEVELOPEMENT_SUITE_GP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POWERSMART_DEVELOPEMENT_SUITE_GP.M with the given input arguments.
%
%      POWERSMART_DEVELOPEMENT_SUITE_GP('Property','Value',...) creates a new POWERSMART_DEVELOPEMENT_SUITE_GP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PowerSmart_Developement_Suite_gp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PowerSmart_Developement_Suite_gp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Menu_Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to menu_help PowerSmart_Developement_Suite_gp

% Last Modified by GUIDE v2.5 23-Nov-2018 11:04:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PowerSmart_Developement_Suite_gp_OpeningFcn, ...
                   'gui_OutputFcn',  @PowerSmart_Developement_Suite_gp_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PowerSmart_Developement_Suite_gp is made visible.
function PowerSmart_Developement_Suite_gp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PowerSmart_Developement_Suite_gp (see VARARGIN)

% Choose default command line output for PowerSmart_Developement_Suite_gp

clc
handles.output = hObject;


%% Creation of Tabs in Input Panel
tbgrp1=uitabgroup(handles.InputPanel);
IPT1=uitab('Parent',tbgrp1,'Title','General Purpose'); % Input Panel Controller Design Tab(RESIZED)
%% Creation of Tabs in Graphics Panel
% tbgrp2=uitabgroup(handles.GraphicsPanel);
% GPT1=uitab('Parent',tbgrp2,'Title','Circuit'); % Graphics panel Circuit Tab
% GPT2=uitab('Parent',tbgrp2,'Title','Plots'); % Graphics panel Plots Tab
% GPT3=uitab('Parent',tbgrp2,'Title','Compensator Coefficients'); % Graphics panel Compensator Coefficients Tab

%% Updating Handles

handles.figure1.Name="PowerSmart Development Suite";
TempData.ParentFigure=handles.figure1;
TempData.GUIProcesses.terminateFurtherExecution=0;
TempData.ProjectInformation.ProjName="BlankProj";
TempData.ProjectInformation.SavedStatus="";
TempData.GUIProcesses.terminateFurtherExecution=0;
TempData.Menu.File=handles.Menu_File;
TempData.Menu.Tools=handles.Menu_Tools;
TempData.Menu.OutputReport=handles.Menu_OutputReport;
TempData.Menu.Help=handles.Menu_Help;
TempData.Sliders.InputPaneSlider=handles.InputPaneSlider;
TempData.Sliders.GraphicsPaneSlider=handles.GraphicsPaneSlider;
handles=TempData;
handles.output=hObject;
guidata(hObject,handles);

%% Tabs Designing

%Input Pane Tabs Design
 IPT1Design (IPT1, hObject);  % Input Panel Tab1 Design

% Graphics Pane Tabs Design
% GPT1Design(GPT1, hObject);
% GPT2Design(GPT2,hObject); % Graphics panel Tab2 Design
% GPT3Design(GPT3,hObject); % Graphics panel Tab3 Design
% handles=guidata(hObject);
% GUIImages=findall(handles.ParentFigure,'type','Image');
% Ax=GUIImages(1).Parent;
% ImAxes(1:length(GUIImages))=Ax;
% ImData=cell(1,length(GUIImages));
% for i=1:length(GUIImages)
%     ImAxes(i)=GUIImages(i).Parent;
%     ImData{1,i}=GUIImages(i).CData;
% end
% handles.GUIProcesses.GUIImageData=ImData;
% handles.GUIProcesses.GUIImagesAxes=ImAxes;
% %handles.GUIProcesses.Figure_Max_Width_In_Pixels=1280;
% handles.GUIProcesses.ResizingDone=0;
% guidata(hObject,handles);
%OLFBTFComputation(handles.FeedbackNetworkTab.FeedbackParameters.OL.RCNetwork.Rfb1,0);




% Update handles structure


% UIWAIT makes PowerSmart_Developement_Suite_gp wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = PowerSmart_Developement_Suite_gp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function Menu_File_Callback(hObject,~,handles)
% hObject    handle to NewProject (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% % --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
%choice=
%WarningBeforeClosing(hObject,handles);
handles=guidata(hObject);
if handles.GUIProcesses.terminateFurtherExecution==1
    return;
else
    delete(handles.ParentFigure);
end

% --- Executes on slider movement.
function InputPaneSlider_Callback(hObject, eventdata, handles)
% hObject    handle to InputPaneSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%pposIPT1=handles.SpecificationsTab.Panes.MovablePane.Position; % Movable Panes Position (All Movable panes)
pposIPT1=handles.GeneralTab.Panes.MovablePane.Position; % Movable Panes Position (All Movable panes) 
pposIPT3=handles.ControllerDesignTab.Panes.MovablePane.Position;
spos=handles.Sliders.InputPaneSlider.Value;

%set(handles.SpecificationsTab.Panes.MovablePane,'Position',[pposIPT1(1) -1*spos pposIPT1(3) pposIPT1(4)]); % Changing IPT1 Movable Panel Position with Slider

set(handles.GeneralTab.Panes.MovablePane,'Position',[pposIPT1(1) -1*spos pposIPT1(3) pposIPT1(4)]); % Changing IPT1 Movable Panel Position with Slider

% set(handles.MovablePanes.IPT2MovablePanel,'Position',[ppos(1) -0.75*spos ppos(3) ppos(4)]); % Changing IPT2 Movable Panel Position with Slider
set(handles.ControllerDesignTab.Panes.MovablePane,'Position',[pposIPT3(1) -1.5*spos pposIPT3(3) pposIPT3(4)]); % Changing IPT3 Movable Panel Position with Slider

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function InputPaneSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InputPaneSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
% function GraphicsPaneSlider_Callback(hObject, eventdata, handles)
% % hObject    handle to GraphicsPaneSlider (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'Value') returns position of slider
% %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% pposGPT2=handles.PlotsTab.Panes.MovablePane.Position;
% pposGPT3=handles.CompensatorCoefficientsTab.Panes.MovablePane.Position;
% spos=handles.Sliders.GraphicsPaneSlider.Value;
% set(handles.PlotsTab.Panes.MovablePane,'Position',[pposGPT2(1) -0.75*spos pposGPT2(3) pposGPT2(4)]);
% set(handles.CompensatorCoefficientsTab.Panes.MovablePane,'Position',[pposGPT2(1) -0.75*spos pposGPT2(3) pposGPT2(4)]);




% --- Executes during object creation, after setting all properties.
function GraphicsPaneSlider_CreateFcn(hObject, eventdata, ~)
% hObject    handle to GraphicsPaneSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% % hObject    handle to figure1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% hObject.Units='pixels';
% WidthInPixel=hObject.Position(3);
% hObject.Units='normalized';
% GUIImageData=handles.GUIProcesses.GUIImageData;
% ImAxes=handles.GUIProcesses.GUIImagesAxes;
% % if (WidthInPixel>=handles.GUIProcesses.Figure_Max_Width_In_Pixels)
%     for i=1:length(GUIImageData)
%         set(ImAxes(i),'Units','pixels');
%         ImAxesPos=get(ImAxes(i),'Position');
%         set(ImAxes(i),'Units','normalized');
%         ResizedImage=imresize(GUIImageData{1,i},[ImAxesPos(4) ImAxesPos(3)]);
%         imshow(ResizedImage,'Parent',ImAxes(i));
%     end
%     handles.GUIProcesses.ResizingDone=1;
% % end
% guidata(hObject,handles);
handles.GUIProcesses.ResizingDone=1;
guidata(hObject,handles);


