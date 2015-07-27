function varargout = Bolt_GUI_v1(varargin)
% BOLT_GUI_V1 MATLAB code for Bolt_GUI_v1.fig
% Developed by Ashkan Shahbazian

% Last Modified by GUIDE v2.5 24-Apr-2015 14:34:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Bolt_GUI_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @Bolt_GUI_v1_OutputFcn, ...
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





% --- Executes just before Bolt_GUI_v1 is made visible.
function Bolt_GUI_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Bolt_GUI_v1 (see VARARGIN)

% Choose default command line output for Bolt_GUI_v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
backgroundImage = importdata('LOGO_ISISE_V2.jpg');
axes(handles.Logo_ISISE);
image(backgroundImage);
axis off;
backgroundImage2 = importdata('LOGO_FCTUC_DEC.jpg');
axes(handles.Logo_UC);
image(backgroundImage2);
axis off;
backgroundImage3 = importdata('Clamp.jpg');
axes(handles.Clamp);
image(backgroundImage3);
axis off;




% UIWAIT makes Bolt_GUI_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Bolt_GUI_v1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function Pretension_Load_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pretension_Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Pretension_Load_Callback(hObject, eventdata, handles)
% hObject    handle to Pretension_Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pretension_Load as text
%        str2double(get(hObject,'String')) returns contents of Pretension_Load as a double
f0 = str2double(get(hObject, 'String'));
% Save the new value
handles.f0 = f0;
guidata(hObject,handles)


function Ultimate_Stress_Callback(hObject, eventdata, handles)
% hObject    handle to Ultimate_Stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ultimate_Stress as text
%        str2double(get(hObject,'String')) returns contents of Ultimate_Stress as a double
fub = str2double(get(hObject, 'String'));
% Save the new value
handles.fub = fub;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Ultimate_Stress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ultimate_Stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Area_Callback(hObject, eventdata, handles)
% hObject    handle to Area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Area as text
%        str2double(get(hObject,'String')) returns contents of Area as a double
As = str2double(get(hObject, 'String'));
% Save the new value
handles.As = As;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Area_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of E as text
%        str2double(get(hObject,'String')) returns contents of E as a double
E = str2double(get(hObject, 'String'));
% Save the new value
handles.E = E;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Sigma_t_Callback(hObject, eventdata, handles)
% hObject    handle to Sigma_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sigma_t as text
%        str2double(get(hObject,'String')) returns contents of Sigma_t as a double
Sigma_t = str2double(get(hObject, 'String'));
% Save the new value
handles.Sigma_t = Sigma_t;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Sigma_t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sigma_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_bolthead_Callback(hObject, eventdata, handles)
% hObject    handle to h_bolthead (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h_bolthead as text
%        str2double(get(hObject,'String')) returns contents of h_bolthead as a double
h_bolthead = str2double(get(hObject, 'String'));
% Save the new value
handles.h_bolthead = h_bolthead;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function h_bolthead_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_bolthead (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_nut_Callback(hObject, eventdata, handles)
% hObject    handle to h_nut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h_nut as text
%        str2double(get(hObject,'String')) returns contents of h_nut as a double
h_nut = str2double(get(hObject, 'String'));
% Save the new value
handles.h_nut = h_nut;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function h_nut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_nut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Calculate.
function Calculate_Callback(hObject, eventdata, handles)
% hObject    handle to Calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a2=0.9;
% stiffness

Lb=handles.Sigma_t+(handles.h_bolthead+handles.h_nut)*0.5; % mm
k10=1.6*handles.As*handles.E/Lb; %N/mm
k0=1000*k10;
k1=k10;
k2=0.1*k10;
k3=0.02*k10;
K_p_1=[0 k0 k1 k2 k3];
K_p_0=[0 k1 k2 k3];

set(handles.text3,'String',k10/1000);
set(handles.Lb, 'String',Lb);

% force
Ft=handles.fub*handles.As; %N
f1=0.85*Ft; %N
f2=a2*Ft; %N

% ultimate deflection
delta_0=0;
delta_1=f1/k1;
delta_2=(f2-f1)/k2+delta_1;
delta_u=0.1*handles.Sigma_t;
delta_p_1=[0 delta_0 delta_1 delta_2 delta_u];
delta_p_0=[0 delta_1 delta_2 delta_u];

% ultimate force
fu=k3*(delta_u-delta_2)+f2;

f_p_1=[0 handles.f0 f1 f2 fu];
f_p_0=[0 f1 f2 fu];

% summary
if handles.f0==0;
   delta=delta_p_0;
   K=K_p_0/1000;
   F=f_p_0/1000;
else
   delta=delta_p_1;
   K=K_p_1/1000;
   F=f_p_1/1000;
end

set(handles.Force, 'String',f2/1000);

plot (delta, F, '-ok',...
    'LineWidth',2,...
    'MarkerSize',6,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[0,0,0],'parent',handles.curve);
%grid on; box on; %axis square;
title(handles.curve,'Single bolt behaviour');
xlabel(handles.curve,'\delta (mm)');
ylabel(handles.curve,'Force (kN)');
data=[delta' F' K'];
set(handles.uitable_output,'data',data);
