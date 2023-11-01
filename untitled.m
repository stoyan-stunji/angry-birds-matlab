function varargout = untitled(varargin)

    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
                       'gui_Singleton',  gui_Singleton, ...
                       'gui_OpeningFcn', @untitled_OpeningFcn, ...
                       'gui_OutputFcn',  @untitled_OutputFcn, ...
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

function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
    n = 50;
    
    handles.body_x = 4 * cos(linspace(0, 2 * pi, n))';
    handles.body_y = 5 * sin(linspace(0, 2 * pi, n))';

    handles.head_1_x = 1.2 * cos(linspace(0, 2 * pi, n))';
    handles.head_1_y = 5.5 + 1.5 * sin(linspace(0, 2 * pi, n))'+0.3;

    handles.head_2_x = 1.2 * cos(linspace(0, 2 * pi, n))'-2;
    handles.head_2_y = 5 + 1.5 * sin(linspace(0, 2 * pi, n))';

    handles.eye_1_x = 1.2 * cos(linspace(0, 2 * pi, n))'+1.5;
    handles.eye_1_y = 5.5 + 1.5 * sin(linspace(0, 2 * pi, n))'-4;

    handles.eye_2_x = 1.2 * cos(linspace(0, 2 * pi, n))'-1;
    handles.eye_2_y = 5.5 + 1.5 * sin(linspace(0, 2 * pi, n))'-4;

    handles.pupil_1_x = 0.2 * cos(linspace(0, 2 * pi, n))'+1.9;
    handles.pupil_1_y = 5.5 + 0.5 * sin(linspace(0, 2 * pi, n))'-4;

    handles.pupil_2_x = 0.2 * cos(linspace(0, 2 * pi, n))'-0.5;
    handles.pupil_2_y = 5.5 + 0.5 * sin(linspace(0, 2 * pi, n))'-4;

    handles.beak_x = 1.5 * cos(linspace(-1, 2 * pi, n))'+1.5;
    handles.beak_y = 5.5 + 1 * sin(linspace(0, 2 * pi, n))'-6;

    handles.tail_1_x = 1 * cos(linspace(0, 2 * pi, n))'-4.5;
    handles.tail_1_y = 5.5 + 1 * sin(linspace(0, 2 * pi, n))'-6;

    handles.tail_2_x = 1 * cos(linspace(0, 2 * pi, n))'-4.3;
    handles.tail_2_y = 4 + 1 * sin(linspace(0, 2 * pi, n))'-6;

    handles.eyebrow_1_x = 1.5 * cos(linspace(0, 2 * pi, n))'+1.5;
    handles.eyebrow_1_y = 6.5 + 0.5 * sin(linspace(0, 2 * pi, n))'-4;

    handles.eyebrow_2_x = 1.5 * cos(linspace(0, 2 * pi, n))'-1;
    handles.eyebrow_2_y = 6.5 + 0.5 * sin(linspace(0, 2 * pi, n))'-4;

    left_point = min(handles.body_x);
    low_point = min(handles.body_y);

    handles.body_x = handles.body_x - left_point;
    handles.body_y = handles.body_y - low_point;

    handles.head_1_x = handles.head_1_x - left_point;
    handles.head_1_y = handles.head_1_y - low_point;

    handles.head_2_x = handles.head_2_x - left_point;
    handles.head_2_y = handles.head_2_y - low_point;

    handles.eye_1_x = handles.eye_1_x - left_point;
    handles.eye_1_y = handles.eye_1_y - low_point;

    handles.eye_2_x = handles.eye_2_x - left_point;
    handles.eye_2_y = handles.eye_2_y - low_point;

    handles.pupil_1_x = handles.pupil_1_x - left_point;
    handles.pupil_1_y = handles.pupil_1_y - low_point;

    handles.pupil_2_x = handles.pupil_2_x - left_point;
    handles.pupil_2_y = handles.pupil_2_y - low_point;

    handles.beak_x = handles.beak_x - left_point;
    handles.beak_y = handles.beak_y - low_point;

    handles.tail_1_x = handles.tail_1_x - left_point;
    handles.tail_1_y = handles.tail_1_y - low_point;

    handles.tail_2_x = handles.tail_2_x - left_point;
    handles.tail_2_y = handles.tail_2_y - low_point;

    handles.eyebrow_1_x = handles.eyebrow_1_x - left_point;
    handles.eyebrow_1_y = handles.eyebrow_1_y - low_point;

    handles.eyebrow_2_x = handles.eyebrow_2_x - left_point;
    handles.eyebrow_2_y = handles.eyebrow_2_y - low_point;

    handles.body_handle = patch(handles.bird, handles.body_x, handles.body_y, 'r');
    
    handles.head_1_handle = patch(handles.bird, handles.head_1_x, handles.head_1_y, 'r');
    handles.head_2_handle = patch(handles.bird, handles.head_2_x, handles.head_2_y, 'r');
    
    handles.eye_1_handle = patch(handles.bird, handles.eye_1_x, handles.eye_1_y, 'w');
    handles.eye_2_handle = patch(handles.bird, handles.eye_2_x, handles.eye_2_y, 'w');
    
    handles.pupil_1_handle = patch(handles.bird, handles.pupil_1_x, handles.pupil_1_y, 'k');
    handles.pupil_2_handle = patch(handles.bird, handles.pupil_2_x, handles.pupil_2_y, 'k');
    
    handles.beak_handle = patch(handles.bird, handles.beak_x, handles.beak_y, 'y');
    
    handles.tail_1_handle = patch(handles.bird, handles.tail_1_x, handles.tail_1_y, 'k');
    handles.tail_2_handle = patch(handles.bird, handles.tail_2_x, handles.tail_2_y, 'k');
    
    handles.eyebrow_1_handle = patch(handles.bird, handles.eyebrow_1_x, handles.eyebrow_1_y, 'k');
    handles.eyebrow_2_handle = patch(handles.bird, handles.eyebrow_2_x, handles.eyebrow_2_y, 'k');

    set(handles.bird, 'xlim', [0 100], 'ylim', [0 100], 'xtick', [], 'ytick', []);
    handles.line = plot(handles.traj, [0 .5], [0 .7], 'ko-', 'MarkerFaceColor', 'k', 'MarkerSize', 10);
    
    set(handles.traj, 'xlim', [0 1], 'ylim', [0 100], 'xtick', [], 'ytick', []);
    
    set(handles.traj, 'buttondownfcn', {@traj_buttondownfcn, handles})
    
    set(handles.line, 'hittest', 'off');
    
    push_button_Callback(hObject, eventdata, handles);
    
    handles.output = hObject;
    guidata(hObject, handles);

function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
    varargout{1} = handles.output;


function go_button_Callback(hObject, eventdata, handles)
    x = str2double(get(handles.x_pos, 'string'));
    y = str2double(get(handles.y_pos, 'string'));
    
    line_x = get(handles.line, 'xdata');
    line_y = get(handles.line, 'ydata');
    
    theta = atan2(line_y(2), line_x(2));
    g = 450;
    v0 = norm(line_x(2), line_y(2));
    
    set(gca, 'xlim', [0, 100], 'ylim', [0, 100]);
    tic;

    while y > 0   
        set(handles.body_handle, 'xdata', handles.body_x + x, 'ydata', handles.body_y + y); 
        
        set(handles.head_1_handle, 'xdata', handles.head_1_x + x, 'ydata', handles.head_1_y + y);
        set(handles.head_2_handle, 'xdata', handles.head_2_x + x, 'ydata', handles.head_2_y + y);
        
        set(handles.eye_1_handle, 'xdata', handles.eye_1_x + x, 'ydata', handles.eye_1_y + y);
        set(handles.eye_2_handle, 'xdata', handles.eye_2_x + x, 'ydata', handles.eye_2_y + y);
        
        set(handles.pupil_1_handle, 'xdata', handles.pupil_1_x + x, 'ydata', handles.pupil_1_y + y);
        set(handles.pupil_2_handle, 'xdata', handles.pupil_2_x + x, 'ydata', handles.pupil_2_y + y);
        
        set(handles.beak_handle, 'xdata', handles.beak_x + x, 'ydata', handles.beak_y + y);
        
        set(handles.tail_1_handle, 'xdata', handles.tail_1_x + x, 'ydata', handles.tail_1_y + y);
        set(handles.tail_2_handle, 'xdata', handles.tail_2_x + x, 'ydata', handles.tail_2_y + y);
        
        set(handles.eyebrow_1_handle, 'xdata', handles.eyebrow_1_x + x, 'ydata', handles.eyebrow_1_y + y);
        set(handles.eyebrow_2_handle, 'xdata', handles.eyebrow_2_x + x, 'ydata', handles.eyebrow_2_y + y);
        
        pause(.1)

        if y < 0
            y = 0;
        end

        x = x + v0 * toc * cos(theta);
        y = y + v0 * toc * sin(theta) - (g * toc^2) / 2;
        
        set(handles.x_pos, 'string', num2str(round(x, 1)));
        set(handles.y_pos, 'string', num2str(round(y, 1)));
    end

    pause(1);
    set(handles.x_pos, 'string', '0');
    set(handles.y_pos, 'string', '70');
    push_button_Callback(hObject, eventdata, handles);

function traj_buttondownfcn (hOject, eventdate, handles)
    xy = get(handles.traj, 'CurrentPoint');
    set(handles.line, 'xdata', [0 xy(1, 1)], 'ydata', [0 xy(1, 2)]);

function y_pos_Callback(hObject, eventdata, handles)

function y_pos_CreateFcn(hObject, eventdata, handles)

    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

function x_pos_Callback(hObject, eventdata, handles)

function x_pos_CreateFcn(hObject, eventdata, handles)

    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    

function push_button_Callback(hObject, eventdata, handles)
    x = str2double(get(handles.x_pos, 'string'));
    y = str2double(get(handles.y_pos, 'string'));
    
    set(handles.body_handle, 'xdata', handles.body_x + x, 'ydata', handles.body_y + y); 
    
    set(handles.head_1_handle, 'xdata', handles.head_1_x + x, 'ydata', handles.head_1_y + y);
    set(handles.head_2_handle, 'xdata', handles.head_2_x + x, 'ydata', handles.head_2_y + y);
    
    set(handles.eye_1_handle, 'xdata', handles.eye_1_x + x, 'ydata', handles.eye_1_y + y);
    set(handles.eye_2_handle, 'xdata', handles.eye_2_x + x, 'ydata', handles.eye_2_y + y);
    
    set(handles.pupil_1_handle, 'xdata', handles.pupil_1_x + x, 'ydata', handles.pupil_1_y + y);
    set(handles.pupil_2_handle, 'xdata', handles.pupil_2_x + x, 'ydata', handles.pupil_2_y + y);
    
    set(handles.beak_handle, 'xdata', handles.beak_x + x, 'ydata', handles.beak_y + y);
    
    set(handles.tail_1_handle, 'xdata', handles.tail_1_x + x, 'ydata', handles.tail_1_y + y);
    set(handles.tail_2_handle, 'xdata', handles.tail_2_x + x, 'ydata', handles.tail_2_y + y);
    
    set(handles.eyebrow_1_handle, 'xdata', handles.eyebrow_1_x + x, 'ydata', handles.eyebrow_1_y + y);
    set(handles.eyebrow_2_handle, 'xdata', handles.eyebrow_2_x + x, 'ydata', handles.eyebrow_2_y + y);
