function plot_region(benchmark)

    addpath("./arrow")

    switch benchmark
        case 'kite'
            kyte();
        case 'random kite'
            random_kite();
        case 'unbounded'
            unbounded();
        case 'pyramid_2'
            pyramid_2();
        case 'pyramid_3'
            pyramid_3();
        case 'distance'
            distance_polytopes();
        case 'degenerate_surf_floor'
            deg_surf_floor();
        otherwise
            disp('Benchmark unknown');
    end
end

function deg_surf_floor()
    f = figure;
    hold on
    grid on
    
    % polytope
        %inner
    fill([2.5; 4; 9; 9; 4], [5; 8; 5.5; 4.5; 2] , 'g');
        % upper-left
    %plot([2.5,4], [5,8], 'k');
    plot([4.5,4], [9,8], '--', 'Color', '#808080');
    plot([2,2.5], [4,5], '--', 'Color', '#808080');
        % lower-left
    %plot([2.5,4], [5,2], 'k');
    plot([2,2.5], [6,5], '--', 'Color', '#808080');
    plot([4.5,4], [1,2], '--', 'Color', '#808080');
        % upper-right
    %plot([4,9], [8,5.5], 'k');
    plot([3,4], [8.5,8], '--', 'Color', '#808080');
    plot([10,9], [5,5.5], '--', 'Color', '#808080');
        % lower-right
    %plot([4,9], [2,4.5], 'k');
    plot([10,9], [5,4.5], '--', 'Color', '#808080');
    plot([3,4], [1.5,2], '--', 'Color', '#808080');
        % right
    %plot([9,9], [5.5, 4.5], 'k');
    plot([9,9], [3.5,4.5], '--', 'Color', '#808080');
    plot([9,9], [6.5,5.5], '--', 'Color', '#808080');
    
    % optimal point
    plot(7, 4, 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 10);
    text(7.1, 4.3, '(7,4)');
    
    % candidate point
    plot(5.14, 5, 'Marker', 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k', 'MarkerSize', 5);
    text(5.2, 5.3, '(5.14, 5)');
    
    % visual
    axis equal
    
    xlim([1,10]);
    ylim([1,9]);
    
    xlabel("\boldmath{$x_3$}", "Interpreter", "latex");
    ylabel("\boldmath{$y_1$}\hspace{4mm}", "Interpreter", "latex", "Rotation", 0);
    
    % arrow from candidate to optimal
    arrow([5.3,4.9], [6.75,4.12], 'Length', 10);
    
    % explanatory texts
        % upper-left
    t = text(2.5, 5.5, 'cell 1 upper aspect ratio');
    set(t,'Rotation',63.5);
        % lower-left
    t = text(2.5, 4.5, 'cell 2 lower aspect ratio');
    set(t,'Rotation',-63.5);
        % upper-right
    t = text(5.25, 7.75, 'cell 2 upper aspect ratio');
    set(t,'Rotation',-28);
        % lower-right
    t = text(5.25, 2.25, 'cell 1 lower aspect ratio');
    set(t,'Rotation',28);
        % right
    t = text(9.2, 5.35, 'cell 3 lower aspect ratio');
    set(t,'Rotation',270);
    
    % save as pdf
    fig2pdf(f,'degenerate');
end

function distance_polytopes()
    f = figure;
    hold on
    grid on
    
    % left-most polytope
    fill([1; 1; 3.5; 6; 3.5], [1.5; 4; 6.5; 4; 1.5], 'b');
%     A = [-1 0; -1 1; 1 1; 1 -1; 0 -1];
%     b = [-1; 3; 10; 2; -1.5];
%     P = Polyhedron(A, b);
%     plot(P, 'Color', 'b');
    
    % right-most polytope
    fill([6; 5; 8; 11.5; 12.5; 9.5], [7; 10; 9; 5.5; 2.5; 3.5], 'g');
%     A = [-3 -1; 1 3; 1 1; 3 1; -1 -3; -1 -1];
%     b = [-25; 35; 17; 40; -20; -13];
%     P = Polyhedron(A, b);
%     plot(P, 'Color', 'g');
    
    % optimal interval of solutions
    plot([4.5, 6], [5.5, 7], 'LineStyle', '-.', 'Color', '#808080');
    plot([6, 7.5], [4, 5.5], 'LineStyle', '-.', 'Color', '#808080');
    
    % visual
    axis equal
    
    xlim([0,13]);
    ylim([0,13]);
    
    xlabel("\boldmath{$x_1$}/\boldmath{$y_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}/\boldmath{$y_2$}\hspace{6mm}", "Interpreter", "latex", "Rotation", 0);
    
    % cost function   
    arrow([4.75, 5.25], [6.25, 6.75], 'Length', 10);
    arrow([6.25, 6.75], [4.75, 5.25], 'Length', 10);
    
    theta = linspace(0, 2*pi, 50).';
	r = [0.1 0.2 0.4 0.8 1.4 2];
    plot(2+cos(theta)*r, 5+sin(theta)*r, 'LineStyle', '--', 'Color', '#A9A9A9');
    plot(10.5+cos(theta)*r, 4.5+sin(theta)*r, 'LineStyle', '--', 'Color', '#A9A9A9');
    
    % optimal solution
    %arrow([5.75, 4.25], [7.25, 5.75], 'Length', 10, 'EdgeColor','r','FaceColor','r');
    %arrow([7.25, 5.75], [5.75, 4.25], 'Length', 10, 'EdgeColor','r','FaceColor','r');
    plot([5.75, 7.25], [4.25, 5.75], 'r');
    plot(5.75, 4.25, 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 10);
    plot(7.25, 5.75, 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 10);
    
    % degenerate region vertexes
    text(4.25, 6, {'$A$'}, "Interpreter", "latex", 'FontSize', 13);
    text(6, 4, {'$B$'}, "Interpreter", "latex", 'FontSize', 13);
    text(5.25, 7, {'$C$'}, "Interpreter", "latex", 'FontSize', 13);
    text(7.5, 5.75, {'$D$'}, "Interpreter", "latex", 'FontSize', 13);
    
    % reference points labels
    text(1.5, 5.25, {'$\bar{x}$'}, "Interpreter", "latex", 'FontSize', 13);
    text(10.75, 4.75, {'$\bar{y}$'}, "Interpreter", "latex", 'FontSize', 13);
    plot(2, 5, 'Marker', '*', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 10);
    plot(10.5, 4.5, 'Marker', '*', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 10);
    
    % save as pdf
    fig2pdf(f,'distance');
end

function random_kite()
    f = figure;
    hold on
    grid on
    
    % polytope
    fill([0; 30; 60; 0], [70; 50; 0; 30], 'b', 'LineStyle', 'none');
    plot([0; 0; 60; 30], [70; 30; 0; 50], 'k');
    plot([0; 30], [70; 50], 'r');
    
    % volatility
    theta = linspace(0, 0.5*pi, 50).';
	r = 10:10:70;
    plot(cos(theta)*r, sin(theta)*r, 'LineStyle', '--', 'Color', '#A9A9A9');
    
    %visual
    axis equal
    
    xlim([0,75]);
    ylim([0,75]);
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}\hspace{2mm}", "Interpreter", "latex", "Rotation", 0);
    
    % cost function
    arrow([0,0], [8,12]);
    text(2, 7, {'$c$'}, "Interpreter", "latex", 'FontSize', 14);
    text(55, 44, {'$H$'}, "Interpreter", "latex", 'FontSize', 14);
    
    % optimal segment
    text( 0, 71, {'$A$'}, "Interpreter", "latex", 'FontSize', 14);
    text(30, 51, {'$B$'}, "Interpreter", "latex", 'FontSize', 14);

    % save as pdf
    fig2pdf(f,'random_kite');
end

function kyte()

    A = [ 2  1;
          2  3;
          4  3;
         -1 -2;
         -eye(2)];
     
    b = [120; 210; 270; -60; 0; 0];
    
    P = Polyhedron(A, b);
    
    f = figure;
    p = plot(P, 'color', 'b');
    alpha(p, 0.75)
    
    hold on
    
    x = [0;30];
    y = [70;50];

    %text(x+1, y+1.5, {'$\xi_1$', '$\xi_2$'}, "Interpreter", "latex");
    plot(x, y, 'r', 'LineWidth', 1.5);
    plot(15, 60, 'Marker', 's', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 13);
    text(16,61.5, {'$\xi_1$'}, "Interpreter", "latex");
    
    x1 = [0;0];
    y1 = [0;0];
    x2 = [8;14];
    y2 = [12;10];
    
    arrow3([x1(1), y1(1)], [x2(1), y2(1)], 'k1',1,1.5);
    text(0.5*(x1(1)+x2(1))-1.8, 0.5*(y1(1)+y2(1))+1.6, {'\boldmath{$c$}'}, "Interpreter", "latex");
    axis normal

    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex", "Rotation", 0);
    title("Experiment 1 with only first objective");
    
    %save as pdf
    fig2pdf(f, 'experiment1_1');
    
    f = figure;
    p = plot(P, 'color', 'b');
    alpha(p, 0.75)
    
    hold on
    
    %text(x+1, y+1.5, {'$\xi_1$', '$\xi_2$'}, "Interpreter", "latex");
    plot(15, 60, 'Marker', 's', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 13);
    text(16,61.5, {'$\xi_1$'}, "Interpreter", "latex");
    plot(x(2), y(2), 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 13);
    text(x(2)+1, y(2)+1.5, {'$\xi_2$'}, "Interpreter", "latex");
    
    arrow3([x1, y1], [x2, y2], 'k1',1,1.5);
    text(0.5*(x1(1)+x2(1))-1.8, 0.5*(y1(1)+y2(1))+1.6, {'\boldmath{$c$}'}, "Interpreter", "latex");
    text(0.5*(x1(2)+x2(2))+1, 0.5*(y1(2)+y2(2))-1.4, {'\boldmath{$d$}'}, "Interpreter", "latex");
    axis normal

    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex", "Rotation", 0);   
    title("Experiment 1 with also second objective");
    
    %save as pdf
    fig2pdf(f, 'experiment1_2');
end


function unbounded()

    f = figure;
    fill([0;0;3;4;4],[1;2;8;8;5], [0;0;0.9;1;0.9], 'LineStyle', 'none')
    
    hold on
    grid on
    colormap winter
    
    plot([0;2.5],[2;7], 'k')
    plot([0;3.25],[1;4.25], 'k')
    plot([2.5,3],[7,8], 'k', 'LineStyle', '--')
    plot([3.25,4],[4.25,5], 'k', 'LineStyle', '--')
    
    arrow3([0, 0], [1, 1], 'k1',1,1.5);
    text(0.4, 0.6, {'\boldmath{$c$}'}, "Interpreter", "latex");
    axis normal
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex", "Rotation", 0);
    xlim([0,4]);
    ylim([0,8]);
    title("Experiment 2 unbounded case");
    
    %save as pdf
    fig2pdf(f, 'experiment2_1');
    
    f = figure;
    fill([0;0;3],[2;8;8], [0;1;1], 'LineStyle', 'none')
    hold on
    fill([0;0;4;4],[0;1;5;0], [0;0;1;1], 'LineStyle', 'none')
    
    grid on
    colormap winter
    
    plot([0;2.5],[2;7], 'k')
    plot([0;3.25],[1;4.25], 'k')
    plot([2.5,3],[7,8], 'k', 'LineStyle', '--')
    plot([3.25,4],[4.25,5], 'k', 'LineStyle', '--')
    
    arrow3([0, 1.5], [1,2.5], 'k1',1,1.5);
    text(0.4, 2.1, {'\boldmath{$c$}'}, "Interpreter", "latex");
    axis normal
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex", "Rotation", 0);
    xlim([0,4]);
    ylim([0,8]);
    title("Experiment 2 unfeasible case");
    
    %save as pdf
    fig2pdf(f, 'experiment2_2');
end


function pyramid_2()

    % pyramid creation
    A = [ 0  0 -1;
         -1  1  1;
         -1 -1  1;
          1 -1  1;
          1  1  1];
      
    b = [0; 1; -1; 1; 3];
    
    P = Polyhedron(A, b);
    
    f = figure;
    
    % pyramid plot
    p = plot(P, 'color', 'b');
    alpha(p, 0.5)
    hold on
    grid on
    
    % first level optimal
    x = [1;1.5];
    y = [1;1.5];
    z = [1;0];
    plot3(x,y,z,'g', 'LineWidth', 1.5);
    
    % sequence of interior points
    plot3(1.25, 1.25, 0.5, 'Marker', 's', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 13);
    text(1.3,1.3, 0.6, {'$\xi_1$'}, "Interpreter", "latex");
    plot3(x(2), y(2), z(2), 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 13);
    text(x(2)+0.05, y(2)+0.05, z(2)+0.1, {'$\xi_2$'}, "Interpreter", "latex");
    
    % visual
    view(101, 39);
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex");
    zlabel("\boldmath{$x_3$}", "Interpreter", "latex", "Rotation", 0);
    title("Experiment 3 optimal regions");
    
    %save as pdf
    fig2pdf(f, 'experiment3_1');
    
    f = figure;
    
    % pyramid plot
    p = plot(P, 'color', 'b');
    alpha(p, 0.5)
    hold on
    grid on
    
    % first and second level optimal
    x = [1;1.5];
    y = [1;1.5];
    z = [1;0];
    plot3(x,y,z,'m', 'LineWidth', 1.5);
    plot3(x(2), y(2), z(2), 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 13);

    % rotation matrix for cylinder
    R1 = [sqrt(2/3) 0 -1/sqrt(3);
          0      1     0    ;
          1/sqrt(3) 0 sqrt(2/3)];
  
    R2 = [1/sqrt(2) -1/sqrt(2) 0;
          1/sqrt(2) 1/sqrt(2) 0;
          0          0     1];
      
     R = R2*R1;

    % construction of cylinder 
    [X,Y,Z] = cylinder(1/sqrt(3));
    Z = Z*0.65+0.45;

    for i=1:2
        for j=1:21
            p = R*[X(i,j);Y(i,j);Z(i,j)];
            X(i,j) = p(1)+2;
            Y(i,j) = p(2)+2;
            Z(i,j) = p(3);
        end
    end
    
    % cylinder plot
    s = surf(X,Y,Z);
    alpha(s,0.5);
    
    % cylinder axis
    l = R* [0    0  0 0;
            0    0  0 0;
            1/6  1 0 1+1/6]*sqrt(3)/sqrt(2);

    l(1:2,:) = l(1:2,:)+2;
     
    plot3(l(1,1:2)', l(2,1:2)', l(3,1:2)', 'k', 'LineWidth', 1.5);
    plot3(l(1,[1,3])', l(2,[1,3])', l(3,[1,3])', 'k', 'LineStyle', '--', 'LineWidth', 1.5);
    plot3(l(1,[2,4])', l(2,[2,4])', l(3,[2,4])', 'k', 'LineStyle', '--', 'LineWidth', 1.5);
    
    % linear cost function
    x1 = [0, 0 ,0];
    x2 = [0.45, 0.45, 0];
    arrow3(x1,x2,'k1',1.5,3);
    text(0.15, 0.15, 0.07, {'\boldmath{$c$}'}, "Interpreter", "latex");
    
    % optimal surface projection
    plot3([1;1.5], [1;1.5], [1;1], '-.m', 'LineWidth', 1.5);
    plot3([2;1.5], [2;1.5], [0;0], '-.m', 'LineWidth', 1.5);
    plot3([0.45;1.5], [0.45;1.5], [0;0], '-.r', 'LineWidth', 1.5);
    
    % visual
    %view(73.5, 41);
    view(84, 20);
    axis normal
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex");
    zlabel("\boldmath{$x_3$}", "Interpreter", "latex", "Rotation", 0);
    xlim([0,2.5]);
    ylim([0,2.5]);
    zlim([0,1.25]);
    title("Experiment 3 cost functions")
    
    %save as pdf
    fig2pdf(f, 'experiment3_2');
end


function pyramid_3()
    
    f = figure;
    
    %pyramid
    p = fill3([0;1;2;1], [1;2;1;0], zeros(4,1) , 'b');
    hold on
    alpha(p, 0.5)
    p = fill3([0;1;1], [1;2;1], [0;0;1], 'b');
    alpha(p, 0.5)
    p = fill3([1;0;1], [0;1;1], [0;0;1], 'b');
    alpha(p, 0.5)
    p = fill3([1;2;1], [0;1;1], [0;0;1], 'b');
    alpha(p, 0.5)
    
    hold on
    grid on
    
    % first level optimal
    fill3([2;1;1],[1;2;1],[0;0;1], 'g', 'LineStyle', 'none');
    
    %second level optimal
    x = [11/6;1];
    y = [1; 11/6];
    z = [1/6;1/6];
    plot3(x, y, z, 'm', 'LineWidth', 1.5);
    
    % sequence of interior points
    plot3(1.25, 1.25, 0.5, 'Marker', 's', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 13);
    text(1.3,1.3, 0.6, {'$\xi_1$'}, "Interpreter", "latex");
    xx = mean(x);
    yy = mean(y);
    zz = mean(z);
    plot3(xx, yy, zz, 'Marker', 's', 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm', 'MarkerSize', 13);
    text(xx+0.05, yy+0.05, zz+0.1, {'$\xi_2$'}, "Interpreter", "latex");
    plot3(5/3, 7/6, 1/6, 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 13);
    text(5/3+0.05, 7/6+0.05, 1/6+0.1, {'$\xi_3$'}, "Interpreter", "latex");
    
    % visual
    view(101, 39)
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex");
    zlabel("\boldmath{$x_3$}", "Interpreter", "latex", "Rotation", 0);
    title("Experiment 4 optimal regions");
    
    %save as pdf
    fig2pdf(f, 'experiment4_1');
    
    f = figure;
    
    % pyramid
    A = [ 0  0 -1;
         -1  1  1;
         -1 -1  1;
          1 -1  1;
          1  1  1];
      
    b = [0; 1; -1; 1; 3];
    
    P = Polyhedron(A, b);
    
    p = plot(P, 'color', 'b');
    alpha(p, 0.5)
    
    hold on
    grid on
    
    % linear cost function
    arrow3([0,0,0], [0.5,0.5,0.5], 'k1', 1.5, 3);
    text(0.25, 0.25, 0.35, {'\boldmath{$c$}'}, "Interpreter", "latex");
    
    % rotation matrix
    R1 = [1  0 0;
         0  0 1;
         0 -1 0];
     
    R2 = [1/sqrt(2) -1/sqrt(2) 0;
           1/sqrt(2)  1/sqrt(2) 0;
           0          0         1];
    
    R = R2*R1;
     
    % cylinder
    [X,Y,Z] = cylinder(1/(2*sqrt(3)));
    Z = Z*sqrt(2);
    
    for i=1:2
        for j=1:21
            p = R*[X(i,j);Y(i,j);Z(i,j)];
            X(i,j) = p(1)+7/4;
            Y(i,j) = p(2)+3/4;
            Z(i,j) = p(3);
        end
    end
    
    s = surf(X,Y,Z);
    alpha(s, 0.5);
    
    % cylinder axis
    l = R* [0   0  0   0;
            0   0  0   0;
            0   1 -0.5 1.5]*sqrt(2);

    l(1,:) = l(1,:)+7/4;
    l(2,:) = l(2,:)+3/4;
     
    plot3(l(1,1:2)', l(2,1:2)', l(3,1:2)', 'k', 'LineWidth', 1.5);
    plot3(l(1,[1,3])', l(2,[1,3])', l(3,[1,3])', 'k', 'LineStyle', '--', 'LineWidth', 1.5);
    plot3(l(1,[2,4])', l(2,[2,4])', l(3,[2,4])', 'k', 'LineStyle', '--', 'LineWidth', 1.5);
    
    % secondary and tertiary optimals
    plot3([11/6;1], [1; 11/6], [1/6;1/6], 'm', 'LineWidth', 1.5);
    plot3(5/3, 7/6, 1/6, 'Marker', 'p', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r', 'MarkerSize', 13);
    
    % tertiary cost function
    syms x y
    
    s = fsurf((x-5/4)^2+(y-3/4)^2, [1 2 0.5 1.5]);
    alpha(s, 0.5);
    
    % optimal identification
    plot3([5/4;7/4], [3/4;5/4], [0;0], '-.r', 'LineWidth', 1.5);
    plot3([5/3;7/4], [7/6;5/4], [1/6;0], '-.r', 'LineWidth', 1.5);
    
    % visual
    view(72, 22.4)
    axis normal
    
    xlabel("\boldmath{$x_1$}", "Interpreter", "latex");
    ylabel("\boldmath{$x_2$}", "Interpreter", "latex");
    zlabel("\boldmath{$x_3$}", "Interpreter", "latex", "Rotation", 0);
    xlim([0,2.15]);
    ylim([0,2.15]);
    zlim([0,1]);
    title("Experiment 4 cost functions");
    
    %save as pdf
    fig2pdf(f, 'experiment4_2');
end

function fig2pdf(h, filename)
    set(h,'Units','Inches');
    pos = get(h,'Position');
    set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
    print(h,filename,'-dpdf','-r0')
end