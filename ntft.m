function coefs = ntft(sig, Frqs, win_len, fs, Window, method)
% ntft complete the Normal Time-frequency Transform by function
% ntft is designed to provide a tool for harmonic signal analysis
%
%
%   coefs = ntft(sig, Frqs, win_len, fs, Window, method)
%            Return a complex matrix containing the NTFT.
%			 The rows of STOutput are the frequencies and the
%			 columns are the time values
% specified by METHOD:
%     'Gaussian'        - (default) using the Gaussian window,
%     'Hanning'         - using the Hanning window
%     'Blackman'        - using the Blackman window
%     'Black-Harris'    - using the Black-Harris window
%     'Nuttal'          - using the Nuttal window
%     'Rife-Vincent3'   - using the Rife-Vincent3 window
if nargin < 6
    method = 'Frequency';
end

if nargin < 5
    Window = 'Gaussian';
end

if nargin < 4
    fs = 1;
end

if nargin < 3
    win_len = length(sig);
end

if ~ischar(method) && ~(isstring(method) && isscalar(method))
  error(message('MATLAB:ntft:unknownMethodParameter'));
end

if nargin < 2
    Frqs = (1:30)/30;
end

if isstring(method)
    method = char(method);
end
sig = reshape(sig,1,length(sig));
if method(1) == 'F' || method(1) == 'f'   % method 'Frequency'
    coefs = ntft_frequency(sig,Frqs,win_len,fs,Window);
else
    coefs = ntft_time(sig,Frqs,win_len,fs,Window);
end
end