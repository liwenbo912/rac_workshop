import os
import yaml
from serial.tools import list_ports
import pyrealsense2 as rs

def get_ports():
    return {port.device for port in list_ports.comports()}

def get_realsense_serials():
    ctx = rs.context()
    serials = [d.get_info(rs.camera_info.serial_number) for d in ctx.devices]
    return serials

def main():
    config_dir = os.path.join(os.path.dirname(__file__), '..', 'config')
    os.makedirs(config_dir, exist_ok=True)
    config_file = os.path.join(config_dir, 'device_port.yaml')

    input("Please ensure the USB device is connected and press Enter...")
    ports_before = get_ports()

    # Camera detection (before unplug)
    camera_serials_before = get_realsense_serials()

    input("Now, please unplug the USB device and press Enter...")
    ports_after = get_ports()
    camera_serials_after = get_realsense_serials()

    device_port = ports_before - ports_after
    if not device_port:
        print("No new port detected. Please try again.")
        return
    device_port = device_port.pop()
    print(f"USB device detected on port: {device_port}")

    # Camera selection logic
    new_cameras = list(set(camera_serials_before) - set(camera_serials_after))
    camera_serial = None
    camera_choices = new_cameras if new_cameras else camera_serials_before
    if camera_choices:
        print("Available RealSense cameras:")
        for idx, serial in enumerate(camera_choices):
            print(f"[{idx}] {serial}")
        sel = input("Select MAIN camera index to use (or press Enter to skip): ")
        if sel.strip() != "":
            try:
                camera_serial = camera_choices[int(sel)]
            except Exception:
                print("Invalid selection. Skipping main camera serial save.")

    # Save device_port and main camera serial if available
    config_data = {'device_port': device_port}
    if camera_serial:
        config_data['camera_serial'] = camera_serial

    with open(config_file, 'w') as file:
        yaml.dump(config_data, file)

    print(f"Device port and camera serial(s) saved to {config_file}")

if __name__ == "__main__":
    main()
